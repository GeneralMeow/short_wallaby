const express = require('express')
const router = express.Router()
const db = require('../database')
const {getAllBooks, getBookById} = require('../database')


router.get('/book/:id', (request, response, next) => {
  const book_id = request.params.id
  db.getBookById(book_id)
    .then(book => {response.render(book)
    })
})

/* GET home page. */
router.get('/', function(request, response, next) {
  // Initial db read to create array books
  db.getAllBooks()
  .then( books => response.render('index', { books: [{title:'Im a book', bookUrl:'blah'}] }))

});

router.get('/book', function(request, response, next) {
  db.getAllBooks()
  .then(books => response.render('book_detail', { books }))
});

module.exports = router;
