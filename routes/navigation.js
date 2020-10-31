var express = require('express');
var router = express.Router();
var { app, client } = require('../app');

router.get('/sbrooms', function (req, res, next) {
  client
    .query(
      'SELECT roomnumber FROM Building, Room WHERE name = "SB" AND Building.name = Room.containingBuilding;'
    )
    .then((data) => {
      res.send(data);
    })
    .catch((err) => {
      next(err);
    });
});

module.exports = router;
