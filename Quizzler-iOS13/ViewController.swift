import UIKit

class ViewController: UIViewController {
    
    var questionNumber = 0;
    let quiz = [
        ["question1", "True"],
        ["question2", "False"],
        ["question3", "True"]
    ];
    
    @IBOutlet weak var questionLabel: UILabel!
    @IBOutlet weak var progressBar: UIProgressView!
    @IBOutlet weak var trueButton: UIButton!
    @IBOutlet weak var falseButton: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad();
        updateUI();
    }
    @IBAction func answerButtonPressed(_ sender: UIButton) {
        let usersAnswer = sender.currentTitle;
        let rightAnswer = quiz[questionNumber][1];
        
        if (usersAnswer == rightAnswer) {
            print("Right");
        } else {
            print("Wrong");
        }
        
        if (questionNumber + 1 < quiz.count) {
            questionNumber += 1;
        } else {
            questionNumber = 0;
        }
        
        updateUI();
    }
    func updateUI () {
        questionLabel.text = quiz[questionNumber][0];
    }

}

