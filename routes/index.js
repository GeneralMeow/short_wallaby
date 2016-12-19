const express = require('express')
const router = express.Router()
const db = require('../database')
//before using findBooks, require right HERE!!!
const {getAllBooks, getBookById, createBook, deleteBookById} = require('../database')

router.get('/', function(request, response, next) {
  db.getAllBooks()
  .then(books => {response.json(books)
  })
});

// const {getAllBooks, getBookById} = require('../database')

router.get('/book/:id', (request, response, next) => {
  const book_id = request.params.id
  db.getBookById(book_id)
    .then(book => {response.json(book)
    })
})


router.post('/new', (request, response, next) => {
  const title = request.body.title
  const author = request.body.author
  const bookUrl = request.body.bookUrl
  const description = request.body.description

 db.createBook(title, author, bookUrl, description)
   .then(book => response.redirect(`/books/${book.id}`))
   .catch(error => { response.render('error', {error})})
})

router.delete('/delete/:id', (request, response, next) => {
  const id = request.params.id
  db.deleteBookById(id)
    .then(id => response.redirect('/') )
    .catch(error => {response.render('error', {error})
  })
})




//book search route

// router.get('/', (req, res, next) => {
//   const query = req.query
//   db.findBooks(query)
//     .then(query => {res.render('search', {query})
//   }).catch(error => {res.render('error', {error})
//     })
// })



router.get('/book', function(request, response, next) {
  db.getAllBooks()
  .then(books => response.render('layout', { books }))
});

module.exports = router;
