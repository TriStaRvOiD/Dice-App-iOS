import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var firstImageView: UIImageView!
    @IBOutlet weak var secondImageView: UIImageView!
    let arrayOfDiceImages =
    [
        UIImage(named: "DiceOne"),
        UIImage(named: "DiceTwo"),
        UIImage(named: "DiceThree"),
        UIImage(named: "DiceFour"),
        UIImage(named: "DiceFive"),
        UIImage(named: "DiceSix"),
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func rollButtonPressed(_ sender: UIButton) {
        let firstRandomInt = Int.random(in: 0..<6)
        let secondRandomInt = Int.random(in: 0..<6)
        firstImageView.image = arrayOfDiceImages[firstRandomInt]
        secondImageView.image = arrayOfDiceImages[secondRandomInt]
    }
    
}

