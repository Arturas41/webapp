var express = require('express');
var router = express.Router();
 
/* GET home page. */
router.get('/', function (req, res, next) {
  res.render('index', {
    title: 'I am learning Express!'
  });
});
 
/* GET users listing. */
router.get('/users', function (req, res, next) {
  res.send('respond with a resource');
});
 
router.get('/users/stats', function (req, res, next) {
  res.send('Stats about the user');
});
 
module.exports = router;
