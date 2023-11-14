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
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        // comment
        //view.backgroundColor = .red
        
       
    }
    
    
    
    @IBAction func selectCell(_ sender: UIButton) {
        addToBoard(sender)
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
        }
        
    }
    
   
   


}

