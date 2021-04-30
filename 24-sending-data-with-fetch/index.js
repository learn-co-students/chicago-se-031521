// Add your code here
const dogUrl = 'http://localhost:3000/dogs';
let dogs = [];
const headers = {
  'Content-type': 'application/json',
  Accepts: 'application/json',
};

const dogform = document.getElementById('dogform');
const doglist = document.getElementById('doglist');
dogform.addEventListener('submit', submitDog);

document.getElementById('refresh').addEventListener('click', fetchDogs);

fetchDogs();

function fetchDogs() {
  fetch(dogUrl)
    .then((res) => res.json())
    .then((json) => {
      dogs = json;
      displayDogs();
    });
}

function displayDogs() {
  doglist.innerHTML = '';
  dogs.forEach(displayDog);
}

function displayDog(dog) {
  const dogLi = document.createElement('li');
  dogLi.innerHTML = `<b>${dog.dogName}</b> (${dog.dogBreed}) <span>[X]</span>`;
  dogLi.querySelector('span').addEventListener('click', () => deleteDog(dog));
  doglist.append(dogLi);
}

function deleteDog(dog) {
  const deleteUrl = `${dogUrl}/${dog.id}`;
  fetch(deleteUrl, {
    method: 'DELETE',
    headers,
  })
  .then(fetchDogs);
}

function upDog(dog) {
  const updateUrl = `${dogUrl}/${dog.id}`;
  fetch(updateUrl, {
    method: 'PATCH',
    headers,
    body: JSON.stringify(dog)
  })
  .then(fetchDogs);
}

function submitDog(event) {
  event.preventDefault();
  const dogForm = event.target;

  const dogName = dogForm.dogname.value;
  const dogBreed = dogForm.dogbreed.value;

  const dogData = {
    dogName,
    dogBreed,
  };

  fetch(dogUrl, {
    method: 'POST',
    headers,
    body: JSON.stringify(dogData),
  })
    .then((res) => res.json())
    .then(fetchDogs)
    .catch((err) => displayDog({ dogName: 'ERROR', dogBreed: 'bad request' }));
}
