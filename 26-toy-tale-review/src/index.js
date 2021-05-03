let addToy = false;
const toyUrl = 'http://localhost:3000/toys';
const headers = {
  'Content-Type': 'application/json',
  Accept: 'application/json',
};
let toys = [];

const toyCollection = document.getElementById('toy-collection');

const addBtn = document.querySelector('#new-toy-btn');
const toyFormContainer = document.querySelector('.container');
addBtn.addEventListener('click', () => {
  // hide & seek with the form
  addToy = !addToy;
  if (addToy) {
    toyFormContainer.style.display = 'block';
  } else {
    toyFormContainer.style.display = 'none';
  }
});

document
  .querySelector('.add-toy-form')
  .addEventListener('submit', createNewToy);

// fetch and add toys

fetch(toyUrl)
  .then((res) => res.json())
  .then((json) => {
    toys = json;
    renderToys();
  });

function renderToys() {
  toyCollection.innerHTML = '';
  toys.forEach(renderToy);
}

function renderToy(toy) {
  const card = document.createElement('div');
  card.classList.add('card');

  card.innerHTML = `
    <h2>${toy.name}</h2>
    <img src="${toy.image}" class="toy-avatar" />
    <p>${toy.likes} Likes</p>
    <button class="like-btn">Like <3</button>
  `;

  card.querySelector('button').addEventListener('click', (e) => {
    fetch(`${toyUrl}/${toy.id}`, {
      method: 'PATCH',
      headers,
      body: JSON.stringify({ likes: toy.likes + 1 }),
    })
      .then((res) => res.json())
      .then((json) => {
        toy.likes = json.likes;
        renderToys();
      });
  });

  toyCollection.append(card);
}

function createNewToy(event) {
  event.preventDefault();

  const toyData = {
    name: event.target.name.value,
    image: event.target.image.value,
    likes: 0,
  };

  fetch(toyUrl, {
    method: 'POST',
    headers,
    body: JSON.stringify(toyData),
  })
    .then((res) => res.json())
    .then(renderToy);
}
