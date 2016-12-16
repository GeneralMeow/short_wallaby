const express = require('express')
const router = express.Router()
const db = require('../database')
//before using findBooks, require right HERE!!!
const {getAllBooks, getBookById} = require('../database')




router.get('/', function(request, response, next) {
  db.getAllBooks()
  .then(data => response.json(data))
});

router.get('/book/:id', (req, res, next) => {
  const book_id = req.params.id
  db.getBookById(book_id)
    .then(book => {res.json(book)
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


module.exports = router;
