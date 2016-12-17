
//Object constructor for Library
function Library(opts){
  Object.keys(opts).forEach(function(key) {
    this[key] = opts[key];
  }, this);
}

//Push all book objects into this array
Library.allBooks = [];
console.log(Library.allBooks);

//Method to push all the books in our array of objects into our Library
Library.loadAll = function(booksData) {
  booksData.forEach(function(book) {
    Library.allBooks.push(new Library(book));
  })
};

//Method to get all loaded books out of database
// Library.fetchResults = function() {
//
// };

//Method to Render books to HTML home page
Library.render = function() {
  Library.loadAll(library);
  library.forEach(function(book) {
    //needs const
    const htmlString = '<div class="grid-item"><img src="' + book.bookUrl + '"></div>';
    // console.log(htmlString);
    //append each book to the book grid
    $('.grid').append(htmlString);
  });
};

Library.render();
// console.log(library);
// console.log(Library.allBooks);
