const express = require('express')
const router = express.Router()
const db = require('../database')
const {getAllBooks} = require('../database')



/* GET home page. */
router.get('/', function(request, response, next) {
  // Initial db read to create array books
  response.render('template', { books: [{title:'Im a book', bookUrl:'blah'}] })
});

router.get('/book', function(request, response, next) {
  db.getAllBooks()
  .then(data => response.json(data))
});

module.exports = router;
