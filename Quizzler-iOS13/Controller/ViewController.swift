import UIKit

class ViewController: UIViewController {
    
    var quizBrain = QuizBrain();
    
    @IBOutlet weak var score: UILabel!
    @IBOutlet weak var questionLabel: UILabel!
    @IBOutlet weak var progressBar: UIProgressView!
    @IBOutlet weak var trueButton: UIButton!
    @IBOutlet weak var falseButton: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad();
        updateUI();
    }
    @IBAction func answerButtonPressed(_ sender: UIButton) {
        
        let userAnswer = sender.currentTitle!;
        let isRightAnswer = quizBrain.checkAnswer(userAnswer);
        
        if (isRightAnswer) {
            sender.backgroundColor = UIColor.green;
        } else {
            sender.backgroundColor = UIColor.red;
        }
        
        quizBrain.updateQuestion();
        
        Timer.scheduledTimer(timeInterval: 0.2, target: self, selector: #selector(updateUI), userInfo: nil, repeats: false);
    }
    @objc func updateUI () {
        questionLabel.text = quizBrain.getQuestionText();
        progressBar.progress = quizBrain.getProgress();
        score.text = "Score: \(quizBrain.getScore())";
        trueButton.backgroundColor = UIColor.clear;
        falseButton.backgroundColor = UIColor.clear;
    }

}

