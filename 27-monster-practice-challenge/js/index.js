const monsterApi = 'http://localhost:3000/monsters';
const pageSize = 5;
let currentPage = 1;

const monsterContainer = document.getElementById('monster-container');

document
  .getElementById('new-monster-form')
  .addEventListener('submit', createNewMonster);

document
  .getElementById('forward')
  .addEventListener('click', () => goToPage(currentPage + 1));
document
  .getElementById('back')
  .addEventListener('click', () => goToPage(currentPage - 1));

getMonsters();

// ------ helper functions -----

function getMonsters() {
  fetch(`${monsterApi}/?_page=${currentPage}&_limit=${pageSize}`)
    .then((res) => res.json())
    .then(displayMonsters);
}

function goToPage(page) {
  currentPage = page < 1 ? 1 : page;
  getMonsters();
}

function displayMonsters(monsters) {
  monsterContainer.innerHTML = '';
  monsters.forEach(displayMonster);
}

function displayMonster(monster) {
  const monsterCard = document.createElement('div');

  monsterCard.innerHTML = `
    <b>${monster.name}</b> (${monster.age})
    <p>${monster.description}</p>
  `;

  monsterContainer.append(monsterCard);
}

function createNewMonster(event) {
  event.preventDefault();

  const newMonster = {
    name: event.target.name.value,
    age: event.target.age.value,
    description: event.target.description.value,
  };

  fetch(monsterApi, {
    method: 'POST',
    headers: {
      'Content-Type': 'application/json',
      Accept: 'application/json',
    },
    body: JSON.stringify(newMonster),
  })
    .then((res) => res.json())
    .then((json) => displayMonster(json));
}
