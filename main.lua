-- Initialize the random seed so it changes every time you play
math.randomseed(os.time())

local correct = math.random(1, 100)
print("I'm thinking of a number. Can you guess it?")
print("Type a number between 1 and 100.")

while true do
    io.write("Enter your guess: ")
    local user_input = io.read()
    local guess = tonumber(user_input)

    if guess == nil then
        print("Please enter a valid number!")
    elseif guess == correct then
        print("That's it! Great job!")
        break -- Exit the loop
    elif guess > correct then
        print("Try lower.")
    else
        print("Try higher.")
    end
end
