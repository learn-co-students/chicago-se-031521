// 1. increment the counter every second
//    -- get access to counter element : getElementById
//    -- find the current number
//    -- set timer to increment number

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
  const counter = el('counter');
  number += value;
  counter.innerText = number;
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

el('heart').addEventListener('click', incrementLike);

function incrementLike() {
  likes[number] = (likes[number] === undefined) ? 1 : likes[number] + 1;
  renderLikes();
}

function renderLikes() {
    const likeList = document.querySelector('.likes');
    likeList.innerHTML = '';

    Object.keys(likes).sort((a,b) => a-b).forEach(key => {
        const newLike = document.createElement('li');
        newLike.innerText = `Likes for ${key}: ${likes[key]}`;
        likeList.append(newLike);
    })
  
  }


function el(id) {
  return document.getElementById(id);
}
