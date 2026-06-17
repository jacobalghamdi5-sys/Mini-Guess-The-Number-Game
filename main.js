// This script runs in a terminal using Node.js
const readline = require('readline');

// Generate a random number between 1 and 100
const correct = Math.floor(Math.random() * 100) + 1;

const rl = readline.createInterface({
    input: process.stdin,
    output: process.stdout
});

console.log("I'm thinking of a number. Can you guess it?");
console.log("Type a number between 1 and 100.");

function askGuess() {
    rl.question('Enter your guess: ', (userInput) => {
        const guess = Number(userInput);

        if (isNaN(guess) || userInput.trim() === "") {
            console.log("Please enter a valid number!");
            askGuess();
        } else if (guess === correct) {
            console.log("That's it! Great job!");
            rl.close(); // End the game
        } else if (guess > correct) {
            console.log("Try lower.");
            askGuess();
        } else {
            console.log("Try higher.");
            askGuess();
        }
    });
}

// Start the game loop
askGuess();
