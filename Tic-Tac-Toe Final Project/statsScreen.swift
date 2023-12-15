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
        
        circleWinLabel.text = "\(AppData.circlesScore)"
        circleLossesLabel.text = "\(AppData.circleLosses)"
       // circleWinLossLabel.text = "\(circleWinLoss)"
        
        crossWinLabel.text = "\(AppData.crossesScore)"
        crossesLossesLabel.text = "\(AppData.crossesLosses)"
       // crossesWinLossLabel.text = "\(crossWinLoss)"
        
        if AppData.circlesScore != 0 && AppData.circleLosses != 0 {
            circleWinLoss = Double(AppData.circlesScore/AppData.circleLosses)
            circleWinLossLabel.text = "\(circleWinLoss)"
            crossesWinLossLabel.text = "\(crossWinLoss)"
        }
        
        if AppData.crossesScore != 0 && AppData.crossesLosses != 0 {
            crossWinLoss = Double(AppData.crossesScore/AppData.crossesLosses)
            crossesWinLossLabel.text = "\(crossWinLoss)"
            circleWinLossLabel.text = "\(circleWinLoss)"
        }
    }
    
  //  @IBAction func refreshButton(_ sender: Any) {
        
       // if AppData.circlesScore != 0 && AppData.circleLosses != 0 {
           // circleWinLoss = Double(AppData.circlesScore/AppData.circleLosses)
           // print(circleWinLoss)
           // crossWinLoss = Double(AppData.crossesScore/AppData.crossesLosses)
           // print(crossWinLoss)
            
           // circleWinLabel.text = "\(AppData.circlesScore)"
           // circleLossesLabel.text = "\(AppData.circleLosses)"
           // circleWinLossLabel.text = "\(circleWinLoss)"
            
            //crossWinLabel.text = "\(AppData.crossesScore)"
            //crossesLossesLabel.text = "\(AppData.crossesLosses)"
            //crossesWinLossLabel.text = "\(crossWinLoss)"
      //  }
        
   // }
}
