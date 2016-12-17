'use strict';
var libraryView = {};
//functions
// libraryView.renderHome = function() {
//   Library.fetchAll();
//   library.forEach(function(book) {
//     //needs const
//     const htmlString = '<div class="grid-item"><img src="' + book.bookUrl + '"></div>';
//     // console.log(htmlString);
//     //append each book to the book grid
//     $('.grid').append(htmlString);
//   });
// };

libraryView.getBookId = function() {
  let img;
  let bookIndex;
    $('img').on('click', function() {
      img = $(this).attr('src');
      $('.tab-content').hide();
      $('#book-detail').show();
        Library.allBooks.forEach(function(book) {
          if(book.bookUrl === img) {
            bookIndex = Library.allBooks.indexOf(book)
            $('.book-holder-image').attr('src', book.bookUrl);
            $('.book-title').html(book.title);
            $('.book-author').html(book.author);
            $('.book-description').html(book.description);
            return bookIndex;
          }
        })
    })
};

libraryView.renderBookDetail = function() {

};

libraryView.renderBookEdit = function() {

};

libraryView.renderBookAdd = function() {

};


//event handlers
$(document).ready(function() {
  $('#add-book').on('click', function(event) {
    event.preventDefault();
    $('.book-holder-image').attr('src', 'http://placehold.it/170x260.jpg');
    $('.tab-content').hide();
    $('#book-add').show();
  })

  $('#edit-book').on('click', function(event) {
    event.preventDefault();
    $('.tab-content').hide();
    $('#book-edit').show();
  })

  $('#logo').on('click', function() {
    $('.tab-content').hide();
    $('#home').show();
  })
});

libraryView.getBookId();
