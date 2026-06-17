import random

def start_game():
    # Generates a random number between 1 and 100
    correct_number = random.randint(1, 100)
    
    print("I'm thinking of a number. Can you guess it?")
    print("Type a number between 1 and 100.")
    
    while True:
        # Take the user's input and convert it into an integer
        user_input = input("Enter your guess: ")
        
        # Safe-guard to make sure they actually typed a number
        if not user_input.isdigit():
            print("Please enter a valid number!")
            continue
            
        guess = int(user_input)
        
        # Check the logic conditions
        if guess == correct_number:
            print("That's it! Great job!")
            break  # This ends the game loop when they win
        elif guess > correct_number:
            print("Try lower.")
        else:
            print("Try higher.")

# Run the game
if __name__ == "__main__":
    start_game()
