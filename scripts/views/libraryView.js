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
      $('#add-book-bottom').hide();
      $('#book-detail').show();
        Library.allBooks.forEach(function(book) {
          if(book.bookUrl === img) {
            bookIndex = Library.allBooks.indexOf(book)
            $('.book-holder-image').attr('src', book.bookUrl);
            $('.book-title').html(book.title);
            $('.book-author').html(book.author);
            $('.book-description').html(book.description);
          }

        })
        libraryView.bookDelete(bookIndex);
        libraryView.renderBookEdit();
    })


};

libraryView.renderBookDetail = function() {

};

libraryView.renderBookEdit = function() {
  $('#edit-book').on('click', function(event) {
    event.preventDefault();
    $('.tab-content').hide();
    $('#add-book-bottom').hide();

    $('#book-edit').show();
  })
}

libraryView.bookDelete = function(bookIndex) {
  //delete this clicked book from array
  $('#delete-book').on('click', function(event) {
    event.preventDefault();
    // console.log("in bookDelete");
    // console.log('bookIndex', bookIndex);
    //TODO: re-load sliced array of allBooks into local storage
    // Library.allBooks.splice(bookIndex, 1);
    $('.tab-content').hide();
    $('#add-book-bottom').hide();
    $('#home').show();
  });
};

libraryView.renderBookAdd = function() {
  $('#add-book').on('click', function(event) {
    event.preventDefault();
    $('.book-holder-image').attr('src', 'http://placehold.it/170x260.jpg');
    $('.tab-content').hide();
    $('#add-book-bottom').hide();
    $('#book-add').show();
  })
};

libraryView.returnHome = function() {
  $('#logo').on('click', function() {
    $('.tab-content').hide();
    $('#add-book-bottom').hide();
    $('#home').show();
  })
}

libraryView.getBookId();
libraryView.renderBookAdd();
libraryView.returnHome();
libraryView.bookDelete();
