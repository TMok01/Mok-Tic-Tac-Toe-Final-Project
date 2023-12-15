//
//  playScreen.swift
//  Tic-Tac-Toe Final Project
//
//  Created by TYLER MOK on 12/6/23.
//

import UIKit

class AppData{
    static var circlesScore = 0
    static var crossesScore = 0
    static var circleLosses = 0
    static var crossesLosses = 0
}

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
    
  
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
       
            board.append(topLeft)
            board.append(topMiddle)
            board.append(topRight)
            board.append(middleLeft)
            board.append(middle)
            board.append(middleRight)
            board.append(bottomLeft)
            board.append(bottomMiddle)
            board.append(bottomRight)
        
            
        

        // Do any additional setup after loading the view.
    }
    
    @IBAction func boardClickAction(_ sender: UIButton)
    {
        addToBoard(sender)
        
        
        
        if checkForVictory(CROSS)
                {
                   
                    resultAlert(title: "Crosses Win!")
            AppData.crossesScore += 1
            AppData.circleLosses += 1
            
                }
    
                if checkForVictory(CIRCLE)
                {
                
                    resultAlert(title: "Circles Win!")
                    AppData.circlesScore += 1
                    AppData.crossesLosses += 1
                    
                }
        
        // if the fullBoard func returns true the alert should pop up saying reset
        if(fullBoard()) {
            resultAlert(title: "Draw")
      }
        
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
        _ = "\nCircles " + String(AppData.circlesScore) + "\n\nCrosses " + String(AppData.crossesScore)
        let ac = UIAlertController(title: title, message: nil, preferredStyle: .actionSheet)
        ac.addAction(UIAlertAction(title: "Reset", style: .default, handler: { (_) in
            self.resetBoard()
        }))
        self.present(ac, animated: true)
    }
    
    // set all the button titles back to nil when called
    func resetBoard()
    {
        for button in board {
            button.setTitle(nil, for: .normal)
            button.isEnabled = true
        }
        if firstTurn == Turn.circle
        {
            firstTurn = Turn.cross
            turnLabel.text = CROSS
        }
        else if firstTurn == Turn.cross
        {
            firstTurn = Turn.circle
            turnLabel.text = CIRCLE
        }
        currentTurn = firstTurn
        
    }
    
    // checking to see when the board is full
    func fullBoard() -> Bool
    {
       // print(board.count)
        for button in board
        {
          //  print(button.titleLabel?.text)
            if button.titleLabel?.text == nil
            {
                // empty space returns false
                return false
            }
        }
        // filled space returns true
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
    
    
    }


