import UIKit

class ViewController: UIViewController {
    
    var questionNumber = 0;
    let quiz = [
        ["question1", "True"],
        ["question2", "False"],
        ["question3", "True"]
    ];
    
    let quiz2 = [
        [
            "question": "1 + 1 = 2",
            "answer": "True"
        ],
        [
            "question": "2 + 2 = 5",
            "answer": "False"
        ],
        [
            "question": "3 + 3 = 6",
            "answer": "True"
        ],
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
        let userAnswer = sender.currentTitle;
        let question = quiz2[questionNumber];
        let correctAnswer = question["answer"];
        
        if (userAnswer == correctAnswer) {
            print("Right");
        } else {
            print("Wrong");
        }
        
        if (questionNumber + 1 < quiz2.count) {
            questionNumber += 1;
        } else {
            questionNumber = 0;
        }
        
        updateUI();
    }
    func updateUI () {
        questionLabel.text = quiz2[questionNumber]["question"];
    }

}

