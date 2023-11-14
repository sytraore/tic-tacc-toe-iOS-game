//
//  userChoice.swift
//  ios101-capstone-project
//
//  Created by Stephane Traore on 11/13/23.
//

import SwiftUI

struct userChoice: View {
    @Binding var letter: String
    @State private var degrees = 0.0
    
    var body: some View {
        ZStack{
            Circle()
                .frame(width: 120, height: 120)
                .foregroundColor(/*@START_MENU_TOKEN@*/.blue/*@END_MENU_TOKEN@*/)
            Circle()
                .frame(width: 100, height: 100)
                .foregroundColor(.white)
            Text(letter)
        }
    }
}

#Preview {
    userChoice(letter: .constant("X"))
}
