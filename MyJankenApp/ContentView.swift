//
//  ContentView.swift
//  MyJankenApp
//
//  Created by ryotaban on 2023/01/14.
//

import SwiftUI

struct ContentView: View {
    @State var answerNumber: Int = 0
    
    var body: some View {
        
        VStack {
            
            Spacer()
            
            if answerNumber == 0 {
                Text("ジャンケンをします")
                    .padding(.bottom)
            } else if answerNumber == 1 {
                Image("gu")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                
                Spacer()
                
                Text("グー")
                    .padding(.bottom)
            } else if answerNumber == 2 {
                Image("choki")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                
                Spacer()
                
                Text("チョキ")
                    .padding(.bottom)
            } else {
                Image("pa")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                
                Spacer()
                
                
                Text("パー")
                    .padding(.bottom)
            }
            
            Button("ジャンケンをする!") {
                answerNumber = Int.random(in: 1...3)
            }
            .frame(maxWidth: .infinity)
            .frame(height: 100)
            .font(.title)
            .background(Color.pink)
            .foregroundColor(Color.white)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

