// Defining text characters for the empty and full hearts for you to use later.
const EMPTY_HEART = '♡';
const FULL_HEART = '♥';

hideModal();

// grab all the hearts and add event listeners to them

document
  .querySelectorAll('.like-glyph')
  .forEach((span) => span.addEventListener('click', handleHeartClick));

function handleHeartClick(event) {
  mimicServerCall()
    .then(() => likeSuccess(event.target))
    .catch((err) => showModal(err));
}

function likeSuccess(element) {
  element.innerHTML = FULL_HEART;
  element.classList.add('activated-heart');
}

// Your JavaScript functions go here!

function hideModal() {
  document.getElementById('modal').classList.add('hidden');
}

function showModal(err) {
  const modal = document.getElementById('modal');
  modal.classList.remove('hidden');
  modal.innerHTML = err;

  setTimeout(hideModal, 3000);
}

//------------------------------------------------------------------------------
// Don't change the code below: this function mocks the server response
//------------------------------------------------------------------------------

function mimicServerCall(url = 'http://mimicServer.example.com', config = {}) {
  return new Promise(function (resolve, reject) {
    setTimeout(function () {
      let isRandomFailure = Math.random() < 0.2;
      if (isRandomFailure) {
        reject('Random server error. Try again.');
      } else {
        resolve('Pretend remote server notified of action!');
      }
    }, 300);
  });
}
