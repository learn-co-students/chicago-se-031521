document.addEventListener('DOMContentLoaded', onLoaded);

function onLoaded() {
  document.getElementById('clicker').addEventListener('click', onClicked);

  const barkform = document.getElementById('bark');
  barkform.addEventListener('submit', dogBark);
}

function onClicked() {
  console.log('you clicked me!');
}

function dogBark(event) {
  event.preventDefault();

  const dog = event.target['dog-name'].value;
  console.log(`${dog} says "woof!"`);
}
