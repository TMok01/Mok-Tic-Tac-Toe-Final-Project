//
//  playScreen.swift
//  Tic-Tac-Toe Final Project
//
//  Created by TYLER MOK on 12/6/23.
//

import UIKit

class playScreen: UIViewController {
    
    enum Turn {
        case cross
        case circle
    }

    
    @IBOutlet weak var turnLabel: UILabel!
    
    
    
    @IBOutlet weak var topLeft: UIButton!
    @IBOutlet weak var topMiddle: UIButton!
    @IBOutlet weak var topRight: UIButton!
    
    @IBOutlet weak var middleLeft: UIButton!
    @IBOutlet weak var middle: UIButton!
    @IBOutlet weak var middleRight: UIButton!
    
    @IBOutlet weak var bottomLeft: UIButton!
    @IBOutlet weak var bottomMiddle: UIButton!
    @IBOutlet weak var bottomRight: UIButton!
    
    
    
    var firstTurn = Turn.cross
    var currentTurn = Turn.cross
    
    var CIRCLE = "O"
    var CROSS = "X"
    var board = [UIButton]()
    
    var circlesScore = 0
    var crossesScore = 0
    
    var circleLosses = 0
    var crossesLosses = 0
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        func initBoard()
        {
            board.append(topLeft)
            board.append(topMiddle)
            board.append(topRight)
            board.append(middleLeft)
            board.append(middle)
            board.append(middleRight)
            board.append(bottomLeft)
            board.append(bottomMiddle)
            board.append(bottomRight)
        }
            
        

        // Do any additional setup after loading the view.
    }
    
    @IBAction func boardClickAction(_ sender: UIButton)
    {
        addToBoard(sender)
        
        if checkForVictory(CROSS)
                {
                   crossesScore += 1
                    circleLosses += 1
                    resultAlert(title: "Crosses Win!")
                }
    
                if checkForVictory(CIRCLE)
                {
                    circlesScore += 1
                crossesLosses += 1
                    resultAlert(title: "Circles Win!")
                }
        
      //  if(fullBoard()) {
      //      resultAlert(title: "Draw")
    //  }
    }
    
    
    func checkForVictory(_ s :String) -> Bool
        {
            // Horizontal Victory
          if thisSymbol(topLeft, s) && thisSymbol(topMiddle, s) && thisSymbol(topRight, s)
          {
            return true
          }
           if thisSymbol(middleLeft, s) && thisSymbol(middle, s) && thisSymbol(middleRight, s)
           {
               return true
           }
           if thisSymbol(bottomRight, s) && thisSymbol(bottomMiddle, s) && thisSymbol(bottomRight, s)
           {
               return true
           }
    
           // Vertical Victory
           if thisSymbol(topLeft, s) && thisSymbol(middleLeft, s) && thisSymbol(bottomLeft, s)
           {
               return true
           }
          if thisSymbol(topMiddle, s) && thisSymbol(middle, s) && thisSymbol(bottomMiddle, s)
          {
               return true
           }
           if thisSymbol(topRight, s) && thisSymbol(middleRight, s) && thisSymbol(bottomRight, s)
           {
              return true
           }
    
           // Diagonal Victory
           if thisSymbol(topLeft, s) && thisSymbol(middle, s) && thisSymbol(bottomRight, s)
           {
               return true
           }
           if thisSymbol(topRight, s) && thisSymbol(middle, s) && thisSymbol(bottomLeft, s)
           {
               return true
           }
    
          return false
       }
    
    
    func thisSymbol(_ button: UIButton, _ symbol: String) -> Bool
        {
            return button.title(for: .normal) == symbol
        }
    
    
    func resultAlert(title: String)
    {
        let message = "\nCircles " + String(circlesScore) + "\n\nCrosses " + String(crossesScore)
        let ac = UIAlertController(title: title, message: nil, preferredStyle: .actionSheet)
        ac.addAction(UIAlertAction(title: "Reset", style: .default, handler: { (_) in
            self.resetBoard()
        }))
        self.present(ac, animated: false)
    }
    
    
    func resetBoard()
    {
        for button in board {
            button.setTitle(nil, for: .normal)
            button.isEnabled = true
        }
        if firstTurn == Turn.circle {
            firstTurn = Turn.cross
            turnLabel.text = CROSS
        }
        else if firstTurn == Turn.cross {
            firstTurn = Turn.circle
            turnLabel.text = CIRCLE
        }
        currentTurn = firstTurn
    }
    
    func fullBoard() -> Bool
    {
        for button in board
        {
            if button.title(for: .normal) == nil
            {
                return false
            }
        }
        return true
    }
    
    
    func addToBoard(_ sender: UIButton)
    {
        if(sender.title(for: .normal) == nil)
        {
            if( currentTurn == Turn.circle)
            {
                sender.setTitle(CIRCLE, for: .normal)
                    currentTurn = Turn.cross
                    turnLabel.text = CROSS
                }
            else if( currentTurn == Turn.cross)
            {
                sender.setTitle(CROSS, for: .normal)
                    currentTurn = Turn.circle
                    turnLabel.text = CIRCLE
                }
            sender.isEnabled = false
            }
        }
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let nvc = segue.destination as! statsScreen
        nvc.circlesScore2 = circlesScore
        nvc.crossesScore2 = crossesScore
        nvc.circleLosses2 = circleLosses
        nvc.crossesLosses2 = crossesLosses
    }
    
    
    
    
    
    }


