import random
num = random.randint(1, 10)
while True:
  print("I'm thinking of a number. Can you guess it? Type in a number between 1 and 10")
  guess = input()
  i = int(guess)
  if i == num:
    print("Great job!")
    break
  elif i < num:
    print("Try higher.")
  elif i > num:
    print("Try lower.")
