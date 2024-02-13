import UIKit

class ViewController: UIViewController {
    
    // for creating a reference connection with an image in Main, hold (control^) button, click and drag image to ViewController.swift right above to override func
    // with that IBOutlet established which allows to reference an UI element
    @IBOutlet weak var diceImageView1: UIImageView!
    @IBOutlet weak var diceImageView2: UIImageView!
    
    // ovverrides when app launches
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // for reaching to attributes: Who.What = Value
        // for choosing a image: #imageLiteral(
        diceImageView1.image = #imageLiteral(resourceName: "DiceSix")
        diceImageView2.image = #imageLiteral(resourceName: "DiceTwo")
        
        // .alpha changes the opacity of the imageView
        diceImageView1.alpha = 0.5
    }
    
    // IBoutlet: Design <-- Code = The changes in code shows up in UI
    // IBAction: Design --> Code = The action in UI triggers the code
    @IBAction func rollButtonPressed(_ sender: UIButton) {
        
        // let is constant value
        let array = [#imageLiteral(resourceName: "DiceOne"), #imageLiteral(resourceName: "DiceTwo"), #imageLiteral(resourceName: "DiceThree"), #imageLiteral(resourceName: "DiceFour"), #imageLiteral(resourceName: "DiceFive"), #imageLiteral(resourceName: "DiceSix")]
        diceImageView1.alpha = 1
        
        // INT.random creates random integer in scale x...y
        var leftDice = Int.random(in: 0...5)
        
        // in print("Selam benim adım \(xyz)") you can write a code inside \() paranthesis
        print("Left Dice is \(leftDice)")
        
        // picks a random element from array, same with above
        diceImageView2.image = array.randomElement()
        diceImageView1.image = array[leftDice]
    }

}
