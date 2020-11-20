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

app.disable('etag');
app.use(router);
app.use(errorHandler);
app.listen(port, () => console.log(`Listening on port ${port}`));

// Implement the CRUD operations.

function errorHandler(err, req, res, next) {
  if (app.get('env') === 'development') {
    console.log(err);
  }
  res.status(err.status || 500).send(err.message);
}

function returnDataOr404(res, data) {
  if (data == null) {
    res.sendStatus(404);
  } else {
    console.log(data)
    res.send(data);
  }
}

function readHelloMessage(req, res) {
  res.send('This is the service for wayfinder');
}

// Returns the longitude and latitude of the building
function buildingCoord(req, res, next) {
  db.oneOrNone(
    `SELECT coordinatesX, coordinatesY FROM Building WHERE name=$1`,
    [req.params.name]
  )
    .then((data) => {
      returnDataOr404(res, data);
    })
    .catch((err) => {
      next(err);
    });
}

// Returns the roomData to the client from the database from the format BUILDING+ROOM
function roomData(req, res, next) {
  let params = req.params.buildingroom.split('+');
  db.oneOrNone(
    `SELECT floorNumber, interiorCoordinatesX, interiorCoordinatesY, lat , lon
    FROM Room, Building
        -- roomNumber and containingBuilding will be user-input
        WHERE roomNumber = $2
        AND containingBuilding = $1
        AND Building.name = Room.containingBuilding
        ;`,
    params
  )
    .then((data) => {
      returnDataOr404(res, data);
    })
    .catch((err) => {
      console.log(err)
      next(err);
    });
}