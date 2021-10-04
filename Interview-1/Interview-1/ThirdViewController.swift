//
//  ThirdViewController.swift
//  Interview-1
//
//  Created by mac on 04.10.2021.
//

import UIKit

class ThirdViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        numberIs.text = "Number is \(number)?"
    }

    var round = 1
    var number = Int.random(in: 0...100)
    var min = 0
    var max = 101
    var playerNumber: String?
    
    func antiCheat () -> Int{
        let x = playerNumber!
        let int = (x as NSString).integerValue
        return int
    }
    
    @IBOutlet weak var rounds: UILabel!
    @IBOutlet weak var numberIs: UILabel!
    
    
    @IBAction func moreButton(_ sender: UIButton) {
        
        guard antiCheat() > number else { return }
        min = number
        number = (number + max)/2
        numberIs.text = "Number is \(number)?"
        round += 1
        rounds.text = "Round № \(round)"
    }
    
    
    @IBAction func lessButton(_ sender: UIButton) {
        guard antiCheat() < number else { return }
        max = number
        number = (min + number)/2
        numberIs.text = "Number is \(number)?"
        round += 1
        rounds.text = "Round № \(round)"
    }
    
}

