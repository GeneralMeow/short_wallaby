//functions

let img;
let bookIndex;
function selectBook() {
  $('img').on('click', function() {
    img = $(this).attr('src');
    $('.tab-content').hide();
    $('#book-detail').show();
      Library.allBooks.forEach(function(book) {
        if(book.bookUrl === img) {
          bookIndex = Library.allBooks.indexOf(book)
          $('img').attr('src', book.bookUrl);
          $('.book-title').html(book.title);
          $('.book-author').html(book.author);
          $('.book-description').html(book.description);
          return bookIndex;
        }
      })
  })

}

//event handlers
$(document).ready(function() {
  $('#add-book').on('click', function(event) {
    event.preventDefault();
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

selectBook();
