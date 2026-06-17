// This function runs when the player interacts with a keypad or computer in the game
function oKeypad_Interact()
{
  // Generate a secret number if it hasn't been set yet
  int correct = Random(99) + 1; // AGS Random(99) gives 0-99, so add 1
  
  // Prompt the user for an input string and convert it to an integer
  string user_input;
  Game.InputBox("I'm thinking of a number between 1 and 100. Guess it:", user_input);
  int guess = user_input.AsInt();
  
  // Display feedback speech over the main character
  if (guess == correct) {
    player.Say("That's it! Great job!");
  }
  else if (guess > correct) {
    player.Say("Try lower.");
  }
  else {
    player.Say("Try higher.");
  }
}
