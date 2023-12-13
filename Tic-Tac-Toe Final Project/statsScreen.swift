//
//  statsScreen.swift
//  Tic-Tac-Toe Final Project
//
//  Created by TYLER MOK on 12/6/23.
//

import UIKit

class statsScreen: UIViewController {
    
    var circlesScore2 = 9
    var crossesScore2 = 5
    var circleWinLoss : Double = 0
    
    var circleLosses2 = 10
    var crossesLosses2 = 7
    var crossWinLoss : Double = 0
    
    
    @IBOutlet weak var circleWinLabel: UILabel!
    
    @IBOutlet weak var circleLossesLabel: UILabel!
    
    @IBOutlet weak var circleWinLossLabel: UILabel!
    
    
    
    @IBOutlet weak var crossWinLabel: UILabel!
    
    @IBOutlet weak var crossesLossesLabel: UILabel!
    
    @IBOutlet weak var crossesWinLossLabel: UILabel!
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func refreshButton(_ sender: Any) {
        
        if circlesScore2 != 0 && circleLosses2 != 0 {
            circleWinLoss = Double(circlesScore2/circleLosses2)
            print(circleWinLoss)
            crossWinLoss = Double(crossesScore2/crossesLosses2)
            print(crossWinLoss)
            
            circleWinLabel.text = "\(circlesScore2)"
            circleLossesLabel.text = "\(circleLosses2)"
            circleWinLossLabel.text = "\(circleWinLoss)"
            
            crossWinLabel.text = "\(crossesScore2)"
            crossesLossesLabel.text = "\(crossesLosses2)"
            crossesWinLossLabel.text = "\(crossWinLoss)"
        }
        
    }
}
