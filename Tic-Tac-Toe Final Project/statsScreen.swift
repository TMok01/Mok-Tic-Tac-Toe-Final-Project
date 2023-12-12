//
//  statsScreen.swift
//  Tic-Tac-Toe Final Project
//
//  Created by TYLER MOK on 12/6/23.
//

import UIKit

class statsScreen: UIViewController {

    var circlesScore2 = 0
    var crossesScore2 = 0
    var circleWinLoss = 0.0
    
    var circleLosses2 = 0
    var crossesLosses2 = 0
    var crossWinLoss = 0.0
    
    
    @IBOutlet weak var circleWinLabel: UILabel!
    
    @IBOutlet weak var circleLossesLabel: UILabel!
    
    @IBOutlet weak var circleWinLossLabel: UILabel!
    
    
    
    @IBOutlet weak var crossWinLabel: UILabel!
    
    @IBOutlet weak var crossesLossesLabel: UILabel!
    
    @IBOutlet weak var crossesWinLossLabel: UILabel!
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        circleWinLoss = Double(circlesScore2/circleLosses2)
        crossWinLoss = Double(crossesScore2/crossesLosses2)
        
        circleWinLabel.text = "\(circlesScore2)"
        circleLossesLabel.text = "\(circleLosses2)"
        circleWinLossLabel.text = "\(circleWinLoss)"
        
        crossWinLabel.text = "\(crossesScore2)"
        crossesLossesLabel.text = "\(crossesLosses2)"
        crossesWinLossLabel.text = "\(crossWinLoss)"
    }
    

    

}
