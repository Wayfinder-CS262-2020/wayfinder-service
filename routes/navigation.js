var express = require('express');
var router = express.Router();
var { app, db } = require('../app');

router.get('/', function (req, res, next) {
  res.send(client);
  db.many(
    `SELECT roomnumber FROM Building, Room
                  WHERE name = 'SB'
                  AND Building.name = Room.containingBuilding;`
  )
    .next((data) => {
      res.send(data);
    })
    .catch((err) => {
      res.sendStatus(404);
    });
});

module.exports = router;
