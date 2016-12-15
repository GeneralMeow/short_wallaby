const express = require('express')
const router = express.Router()
const db = require('../database')
console.log('db', db);
/* GET home page. */
router.get('/', function(request, response, next) {
  response.render('index', { title: 'Express' })
});

router.get('/book', function(request, response, next) {
  db.getAllBooks()
  .then(data => {response.send(data)})
  // response.render('index', { title: 'Express', data})
});

module.exports = router;
