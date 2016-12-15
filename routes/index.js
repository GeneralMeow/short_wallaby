const express = require('express')
const router = express.Router()
const db = require('../database')
const {getAllBooks} = require('../database')



/* GET home page. */
router.get('/', function(request, response, next) {
  response.render('index', { title: 'Express' })
});

router.get('/book', function(request, response, next) {
  db.getAllBooks()
  .then(data => response.json(data))
});

module.exports = router;
