//
//  statsScreen.swift
//  Tic-Tac-Toe Final Project
//
//  Created by TYLER MOK on 12/6/23.
//

import UIKit

class statsScreen: UIViewController {
    
    var circleWinLoss = 0.0
    var crossWinLoss = 0.0
    
    
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
        
        if appData.circlesScore != 0 && appData.circleLosses != 0 {
            circleWinLoss = Double(appData.circlesScore/appData.circleLosses)
            print(circleWinLoss)
            crossWinLoss = Double(appData.crossesScore/appData.crossesLosses)
            print(crossWinLoss)
            
            circleWinLabel.text = "\(appData.circlesScore)"
            circleLossesLabel.text = "\(appData.circleLosses)"
            circleWinLossLabel.text = "\(appData.circleWinLoss)"
            
            crossWinLabel.text = "\(appData.crossesScore)"
            crossesLossesLabel.text = "\(appData.crossesLosses)"
            crossesWinLossLabel.text = "\(appData.crossWinLoss)"
        }
        
    }
}
