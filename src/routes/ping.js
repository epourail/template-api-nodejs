const express = require('express');
const router = express.Router();

router.get('/', function(req, res, next) {
  res
      .status(200)
      .set('Content-Type', 'text/plain')
      .send('pong');
});

module.exports = router;
