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
    }


