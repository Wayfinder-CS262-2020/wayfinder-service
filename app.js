// Set up the database connection.

const pgp = require('pg-promise')();
const db = pgp({
  host: 'lallah.db.elephantsql.com',
  port: 5432,
  database: process.env.USER,
  user: process.env.USER,
  password: process.env.PASSWORD,
});

// Configure the server and its routes.

const express = require('express');
const app = express();
const port = process.env.PORT || 3000;
const router = express.Router();
router.use(express.json());

router.get('/', readHelloMessage);
router.get('/building/:name', buildingCoord);
router.get('/room/:buildingroom', roomData);

app.use(router);
app.use(errorHandler);
app.listen(port, () => console.log(`Listening on port ${port}`));

// Implement the CRUD operations.

function errorHandler(err, req, res) {
  if (app.get('env') === 'development') {
    console.log(err);
  }
  res.sendStatus(err.status || 500);
}

function returnDataOr404(res, data) {
  if (data == null) {
    res.sendStatus(404);
  } else {
    res.send(data);
  }
}

function roomData(req, res, next) {
  let params = req.params.split('+');
  db.oneOrNone(
    `SELECT floorNumber, interiorCoordinatesX, interiorCoordinatesY
    FROM Room, Building
        -- roomNumber and containingBuilding will be user-input
        WHERE roomNumber = $1
        AND containingBuilding = $2
        AND Building.name = Room.containingBuilding
        ;`,
    params
  )
    .then((data) => {
      returnDataOr404(res, data);
    })
    .catch((err) => {
      next(err);
    });
}

function readHelloMessage(req, res) {
  res.send('This is the service for wayfinder');
}

function buildingCoord(req, res, next) {
  db.oneOrNone(
    `SELECT coordinatesX, coordinatesY FROM Building WHERE name='${req.params.name}'`
  )
    .then((data) => {
      returnDataOr404(res, data);
    })
    .catch((err) => {
      next(err);
    });
}
