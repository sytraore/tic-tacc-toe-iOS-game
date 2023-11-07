//
//  ViewController.swift
//  ios101-capstone-project
//
//  Created by Stephane Traore on 11/6/23.
//

import UIKit
import SwiftUI

class ViewController: UIViewController {
    
    @State private var moves = ["","","","","","","","",""]
    @State private var gameTitle = "Tic tac Toe"
    @State private var endGameBool = false
    private var ranges = [(0..<3), (3..<6), (6..<9)]
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        // comment
        view.backgroundColor = .red
        VStack{
            Text(gameTitle)
                .alert(gameTitle, isPresented: $endGameBool){
                    Button("Restart", role: . destructive, action: restartGame)
                }
            Spacer()
            ForEach(ranges, id: \.self){ range in
                HStack{
                    ForEach(range, id: \.self){ i in
                        SelectButton(letter: self.$moves[i])
                    }
                }
                
            }
            Spacer()
            
            Button("Restart", action: restartGame)
        }
    }
    
    func restartGame(){
        
    }


}

