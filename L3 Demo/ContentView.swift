//
//  ContentView.swift
//  L3 Demo
//
//  Created by Aditya Ranjan Jha on 18/03/23.
//

import SwiftUI

struct ContentView: View {
    
    @State var playerCard="card3"
    @State var cpuCard="card 13"
    
    @State var playerScore = 0
    @State var cpuScore = 0
    
    var body: some View {
        
        ZStack{
            Image("background-cloth")
                .resizable()
                .ignoresSafeArea()
            VStack{
                Spacer()
                Image("logo")
                    .shadow(radius: 10)
                Spacer()
                HStack{
                    Image(playerCard)
                    Spacer()
                    Image(cpuCard)
                }.padding().padding()
                    .shadow(radius: 10)
                Spacer()
                Button {
                    deal()
                } label: {
                    Image("button")
                }

                Spacer()
                HStack{
                    Spacer()
                    Text("Player")
                        .font(.largeTitle)
                    Spacer()
                    Text("CPU")
                        .font(.largeTitle)
                    Spacer()
                }.foregroundColor(.white)
                Spacer()
                HStack{
                    Spacer()
                    Text(String(playerScore))
                    Spacer()
                    Text(String(cpuScore))
                    Spacer()
                }.font(.largeTitle)
                    .foregroundColor(.white)
            }
        }
       
    }
    
    func deal() {
        // Randomize the player card
        let playerCardValue = Int.random(in: 2...14)
        playerCard="card" + String(playerCardValue)
        // Randomize the cpu card
        let cpuCardValue = Int.random(in: 2...14)
        cpuCard="card" + String(cpuCardValue)
        // Update the score
        if(playerCardValue > cpuCardValue){
            //Add one to player score
            playerScore = playerScore + 1
            //playerScore += 1
        }
        else if(cpuCardValue > playerCardValue){
            //Add one to cpu score
            cpuScore = cpuScore + 1
        }
        else{
            //Tie
            playerScore += 1
            cpuScore += 1
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
