const booksUrl = 'https://anapioficeandfire.com/api/books';

fetch(booksUrl)
  .then((res) => res.json())
  .then(handleJson);

function handleJson(json) {
  console.log(json)
  renderData(json);
}

function renderData(data) {
  const bookDiv = document.getElementById('books');
  bookDiv.innerHTML = '';

  data.forEach((book) => {
    const bookSection = document.createElement('section');
    bookSection.innerHTML = `<b>${book.name}</b> (${book.numberOfPages} p)`;
    bookDiv.append(bookSection);
  });
}
