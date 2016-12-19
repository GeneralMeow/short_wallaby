'use strict';

//Push all book objects into this array
Library.allBooks = [];
console.log(Library.allBooks);

//Object constructor for Library
function Library(opts){
  Object.keys(opts).forEach(function(key) {
    this[key] = opts[key];
  }, this);
}

//Method to Render books to HTML home page
Library.prototype.render = function() {
  library.forEach(function(book) {
    //needs const
    const htmlString = '<div class="grid-item"><img src="' + book.bookUrl + '"></div>';
    // console.log(htmlString);
    //append each book to the book grid
    $('.grid').append(htmlString);
  });
};

//Method to push all the books in our array of objects into our Library
Library.loadAll = function(booksData) {
  booksData.forEach(function(book) {
    Library.allBooks.push(new Library(book));
  })
};

//Method to get all loaded books out of database
Library.fetchAll = function() {
  if(localStorage.library) {
    const jsonData = JSON.parse(localStorage.library);
    Library.loadAll(jsonData);
    Library.prototype.render();
  } else {
    $.ajax('data/library.json', {
      method: 'GET',
      success: successHandler,
      error: errorHandler
    });
    function successHandler(data) {
      Library.loadAll(data);
        Library.prototype.render();
      const datastring = JSON.stringify(data);
      localStorage.setItem('library', datastring);
    };
    function errorHandler(error) {
      console.log("Error:", error);
    };
  };
};

Library.fetchAll();
