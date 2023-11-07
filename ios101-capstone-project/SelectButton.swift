//
//  SelectButton.swift
//  ios101-capstone-project
//
//  Created by Stephane Traore on 11/7/23.
//

import SwiftUI

struct SelectButton: View {
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
                .font(.system(size:50))
                .bold()
        }
        .rotation3DEffect(.degrees(degrees), axis:(x:0, y: 1, z:0))
        .gesture(TapGesture()
            .onEnded{ _ in
                withAnimation(.easeIn(duration:0.25)){
                    self.degrees -= 180
                }
                
            })
    }
}

#Preview {
    SelectButton(letter: .constant("X"))
}
