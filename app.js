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
router.get('/building/:', buildingCoord);

app.use(router);
app.use(errorHandler);
app.listen(port, () => console.log(`Listening on port ${port}`));

// Implement the CRUD operations.

function errorHandler(req, res, next, err) {
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

function buildingCoord(req, res, next) {
  db.oneOrNone(`SELECT * FROM Building WHERE name=${req.params.id}`)
    .then((data) => {
      res.send(data);
    })
    .catch((err) => {
      console.log(err);
      res.sendStatus(404);
    });
}
