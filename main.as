package {
    import flash.display.MovieClip;
    import flash.events.MouseEvent;
    import flash.text.TextField;

    public class Main extends MovieClip {
        // Variables to store the secret number and user guess
        private var correct:int;
        private var guess:int;

        public function Main() {
            // Generate a random number between 1 and 100
            correct = Math.floor(Math.random() * 100) + 1;
            
            // Set up a listener for when a submit button is clicked
            submitButton.addEventListener(MouseEvent.CLICK, checkGuess);
        }

        private function checkGuess(event:MouseEvent):void {
            guess = int(inputField.text);
            
            if (guess == correct) {
                feedbackField.text = "That's it! Great job!";
            } else if (guess > correct) {
                feedbackField.text = "Try lower.";
            } else {
                feedbackField.text = "Try higher.";
            }
        }
    }
}
