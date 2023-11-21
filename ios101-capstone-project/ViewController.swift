//
//  ViewController.swift
//  ios101-capstone-project
//
//  Created by Stephane Traore on 11/6/23.
//

import UIKit
import SwiftUI

class ViewController: UIViewController {
    
    enum Turn {
        case NotCross
        case Cross
    }
    @IBOutlet weak var turnlabel: UILabel!
    
    @IBOutlet weak var cell_1: UIButton!
    
    @IBOutlet weak var cell_2: UIButton!
    
    @IBOutlet weak var cell_3: UIButton!
    
    @IBOutlet weak var cell_4: UIButton!
    
    @IBOutlet weak var cell_5: UIButton!
    
    @IBOutlet weak var cell_6: UIButton!
    
    @IBOutlet weak var cell_7: UIButton!
    
    @IBOutlet weak var cell_8: UIButton!
    
    @IBOutlet weak var cell_9: UIButton!
    
    
    var firstTurn = Turn.Cross
    var currentTurn = Turn.Cross
    var O = "O"
    var X = "X"
    var board = [UIButton]()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        // comment
        view.backgroundColor = .orange
        initBoard()
       
    }
    func initBoard(){
        board.append(cell_1)
        board.append(cell_2)
        board.append(cell_3)
        board.append(cell_4)
        board.append(cell_5)
        board.append(cell_6)
        board.append(cell_7)
        board.append(cell_8)
        board.append(cell_9)
    }
    
    
    
    @IBAction func selectCell(_ sender: UIButton) {
        addToBoard(sender)
        if winnerCheck(X){
            result(title: "X win!")
        }
        if winnerCheck(O){
            result(title: "O win!")
        }
        if (fullBoard()){
            result(title: "Draw")
        }
    }
    
    func winnerCheck(_ s: String) -> Bool{
        
        // win horizontaly
        if displayedSymbol(cell_1, s) && displayedSymbol(cell_2, s) && displayedSymbol(cell_3, s){
            return true
        }
        if displayedSymbol(cell_4, s) && displayedSymbol(cell_5, s) && displayedSymbol(cell_6, s){
            return true
        }
        if displayedSymbol(cell_7, s) && displayedSymbol(cell_8, s) && displayedSymbol(cell_9, s){
            return true
        }
        
        // win vertically
        if displayedSymbol(cell_1, s) && displayedSymbol(cell_4, s) && displayedSymbol(cell_7, s){
            return true
        }
        if displayedSymbol(cell_2, s) && displayedSymbol(cell_5, s) && displayedSymbol(cell_8, s){
            return true
        }
        if displayedSymbol(cell_3, s) && displayedSymbol(cell_6, s) && displayedSymbol(cell_9, s){
            return true
        }
        
        // win diagonally
        if displayedSymbol(cell_1, s) && displayedSymbol(cell_5, s) && displayedSymbol(cell_9, s){
            return true
        }
        if displayedSymbol(cell_3, s) && displayedSymbol(cell_5, s) && displayedSymbol(cell_7, s){
            return true
        }
        if displayedSymbol(cell_7, s) && displayedSymbol(cell_8, s) && displayedSymbol(cell_9, s){
            return true
        }
        return false
    }
    
    func displayedSymbol(_ button: UIButton, _ symbol: String) -> Bool{
        return button.title(for: .normal) == symbol
    }
    
    func result(title: String){
        let c = UIAlertController(title: title, message: nil, preferredStyle: .actionSheet)
        c.addAction(UIAlertAction(title: "Restart", style: .default, handler: {(_) in
            self.restartBoard()
        }))
        self.present(c, animated: true)
    }
    
    func restartBoard(){
        for button in board{
            button.setTitle(nil, for: .normal)
            button.isEnabled = true
        }
        if (firstTurn == Turn.NotCross){
            firstTurn = Turn.Cross
            turnlabel.text = X
        }
        else if (firstTurn == Turn.Cross){
            firstTurn = Turn.NotCross
            turnlabel.text = O
        }
        currentTurn = firstTurn

    }
    
    func fullBoard() -> Bool{
        for button in board{
            if button.title(for: .normal) == nil{
                return false
            }
        }
        return true
    }
    
    func addToBoard(_ sender: UIButton){
        if (sender.title(for: .normal) == nil){
            if (currentTurn == Turn.NotCross){
                sender.setTitle(O, for: .normal)
                currentTurn = Turn.Cross
                turnlabel.text = X
            }
            else if (currentTurn == Turn.Cross){
                sender.setTitle(X, for: .normal)
                currentTurn = Turn.NotCross
                turnlabel.text = O
            }
            sender.isEnabled = false
        }
        
    }
    
   
   


}

