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
router.get('/navtest', navTest);

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

function readHelloMessage(req, res) {
  res.send('This is the service for wayfinder');
}

function navTest(req, res, next) {
  db.many(
    `SELECT roomnumber FROM Building, Room 
    WHERE name = "SB" 
    AND Building.name = Room.containingBuilding;`
  )
    .then((data) => {
      res.send(data);
    })
    .catch((err) => {
      next(err);
    });
}
