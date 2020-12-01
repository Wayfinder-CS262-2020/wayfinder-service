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
const bodyParser = require('body-parser');
const path = require('path');
const bcrypt = require('bcrypt');
const jwt = require('jsonwebtoken')
const app = express();

app.use(bodyParser.urlencoded({ extended: true }));
app.use(bodyParser.json());


const port = process.env.PORT || 3000;
const router = express.Router();
router.use(express.json());

const accessTokenSecret = process.env.JWTSECRET

router.get('/', readHelloMessage);
router.get('/building/:name', buildingCoord);
router.get('/room/:buildingroom', roomData);
router.post('/auth/login', auth);
router.post('/auth/create', createUser)

app.disable('etag');
app.use(router);
app.use(errorHandler);
app.listen(port, () => console.log(`Listening on port ${port}`));

app.use(function (req, res, next) {
  res.header("Access-Control-Allow-Origin", "YOUR-DOMAIN.TLD"); // update to match the domain you will make the request from
  res.header("Access-Control-Allow-Headers", "Origin, X-Requested-With, Content-Type, Accept");
  next();
});

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
    console.log(data);
    res.send(data);
  }
}

function readHelloMessage(req, res) {
  res.send('This is the service for wayfinder');
}

// Returns the longitude and latitude of the building
function buildingCoord(req, res, next) {
  db.oneOrNone(`SELECT lat, lon FROM Building WHERE name=$1`, [req.params.name])
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
      console.log(err);
      next(err);
    });
}

function auth(req, res, next) {
  const email = req.body.email;
  const username = req.body.email.split('@')[0]
  const password = req.body.password;
  console.log(req.body)
  if (email && password) {
    db.oneOrNone(`SELECT pass FROM accounts WHERE email = $1`, [
      email,
    ])
      .then((data) => {
        if (data) {
          console.log(data.pass)

          if (bcrypt.compareSync(password, data.pass)) {
            const accessToken = jwt.sign({ username: username }, accessTokenSecret)
            res.json(
              {
                data: "test"
              }
            );
          } else {

            res.send('Invalid Login Details!')
          }
        }
      })
      .catch((err) => {
        console.log(err);
        next(err)
      });
  } else {
    res.send('Login Details not recieved!')
  }
}

function createUser(req, res, next) {
  const email = req.body.email;
  const username = req.body.email.split('@')[0]
  const password = req.body.password;
  const hash = bcrypt.hashSync(password, 10);
  db.one(`INSERT INTO Accounts(username, pass, email) VALUES ($1, $2, $3)`, [username, hash, email]).then(
    data => {
      res.send(data);
    }
  ).catch(err => {
    next(err)
  })
}