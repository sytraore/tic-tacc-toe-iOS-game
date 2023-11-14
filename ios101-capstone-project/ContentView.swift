//
//  ContentView.swift
//  ios101-capstone-project
//
//  Created by Stephane Traore on 11/14/23.
//

import SwiftUI

struct ContentView: View {
    @State private var moves = ["","","","","","","","","",]
    @State private var endGameText = "Tic Tac Toe"
    @State private var gameOver = false
    private var ranges = [(0..<3),(3..<6),(6..<9)]
    
    
    var body: some View {
        VStack{
            Text(endGameText)
                .alert(endGameText, isPresented: $gameOver){
                    Button("Restart", role: .destructive, action: restartGame)
                }
            
            Spacer()
            ForEach(ranges,id: \.self){ range in
                HStack{
                    ForEach(range, id: \.self){ i in
                        UserSelect(letter: $moves[i])
                    }
                }
            }
            
            Spacer()
            
            Button("Restart", action: restartGame )
        }
    }
}

func restartGame(){
    
}

#Preview {
    ContentView()
}
