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

// Login function, POST request with email and password
function auth(req, res, next) {
  const email = req.body.email;
  const username = req.body.email.split('@')[0]
  const password = req.body.password;
  if (email && password) {
    db.oneOrNone(`SELECT pass FROM accounts WHERE email = $1`, [
      email,
    ]) // Request the hashed password from the db
      .then((data) => {
        if (data) {

          if (bcrypt.compareSync(password, data.pass)) { // compare the hashed password with the login password
            const accessToken = jwt.sign({ username: username }, accessTokenSecret) // create a signed jwt
            console.log("login successful")
            res.json(
              {
                accessToken // respond with the token
              }
            );
          } else {

            res.send('Invalid Login Details!') // Password incorrect
          }
        } else {
          res.send('Invalid Login Details!') // Email incorrect
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

// Creates a new user
function createUser(req, res, next) {
  const email = req.body.email;
  const username = req.body.email.split('@')[0]
  const password = req.body.password;
  const hash = bcrypt.hashSync(password, 10); // create hash of the password
  db.one(`INSERT INTO Accounts(username, pass, email) VALUES ($1, $2, $3)`, [username, hash, email]).then( // create a new user with that hashed password
    data => {
      res.send(data); // send the response
    }
  ).catch(err => {
    next(err)
  })
}