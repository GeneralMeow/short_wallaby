//functions
function library.forEach(function(book) {
  //needs const
  const htmlString = '<div class="grid-item"><img src="' + book.bookUrl + '"></div>';

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
