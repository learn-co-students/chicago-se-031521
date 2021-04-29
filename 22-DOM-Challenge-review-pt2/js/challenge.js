// 1. increment the counter every second
//    -- get access to counter element : getElementById
//    -- find the current number
//    -- set timer to increment number

let running = true;
let number = 0;
const likes = {};

let timer = setInterval(() => updateNumber(1), 1000);

// 2. Increment and decrement counter with +/- buttons
//    -- grab plus and minus buttons
//    -- add event listeners to buttons
//    -- hook up functions to make number go up or down

const plusButton = el('plus');
plusButton.addEventListener('click', incrementNumber);
const minusButton = el('minus');
minusButton.addEventListener('click', decrementNumber);

function updateNumber(value) {
  if (running) {
    const counter = el('counter');
    number += value;
    counter.innerText = number;
  }
}

function incrementNumber() {
  updateNumber(1);
}

function decrementNumber() {
  updateNumber(-1);
}

// 3. We can "like" a number on the counter
//  -- grab the "like" button
//  -- attatch an event handler to the button that:
//     -- use the current number for a hash key
//     -- increment that hash key value
//  -- display the like values without repetition

el('heart').addEventListener('click', incrementLike);

function incrementLike() {
  if (running) {
    likes[number] = likes[number] === undefined ? 1 : likes[number] + 1;

    // if (likes[number] === undefined) {
    //   likes[number] = 1;
    // }
    // else {
    //   likes[number] += 1;
    // }

    renderLikes();
  }
}

function renderLikes() {
  const likeList = document.querySelector('.likes');
  likeList.innerHTML = '';

  const numbers = Object.keys(likes);
  const sortedNumbers = numbers.sort((a, b) => a - b);

  // Object.keys(likes)
  //   .sort((a, b) => a - b)
  //   .
  sortedNumbers.forEach((key) => {
    const newLike = document.createElement('li');
    newLike.innerText = `Likes for ${key}: ${likes[key]}`;
    likeList.append(newLike);
  });
}

// 4. Pause button
// 5. Resume button

const pauseButton = el('pause');
pauseButton.addEventListener('click', togglePause);

function togglePause() {
  running = !running;
  pauseButton.innerText = running ? ' pause ' : ' resume ';
}

// 6. Adding comments
// -- grab our comment form
// -- add submit listener
// -- on submit, add the comment to the page

const commentForm = el('comment-form');
commentForm.addEventListener('submit', submitComment);

function submitComment(event) {
  event.preventDefault();
  addComment(event.target.comment.value);
  event.target.comment.value = '';
}

function addComment(comment) {
  const commentList = el('list');
  const commentDiv = document.createElement('div');
  commentDiv.innerText = comment;
  commentList.append(commentDiv);
}

////

function el(id) {
  return document.getElementById(id);
}
