//
//  ContentView.swift
//  Card Game
//
//  Created by chandra on 10/07/24.
//

import SwiftUI

struct ContentView: View {
    
    @State var playerCard = "back"
    @State var cpuCard = "back"
    @State var playerScore = 0
    @State var cpuScore = 0
    
    var body: some View {
        ZStack{
            Image("background-plain").resizable().ignoresSafeArea()
            
            VStack{
                Spacer()
                Image("logo")
                Spacer()
                HStack{
                    Spacer()
                    Image(playerCard)
                    Spacer()
                    Image(cpuCard)
                    Spacer()
                }
                Spacer()
                Button{
                    dealClicked()
                } label: {
                    Image("button")
                }
                Spacer()
                HStack{
                    Spacer()
                    VStack{
                        Text("PLAYER").font(.headline).padding(.bottom,10)
                        Text(String(playerScore)).font(.largeTitle).fontWeight(.bold)
                    }
                    Spacer()
                    VStack{
                        Text("CPU").font(.headline).padding(.bottom,10)
                        Text(String(cpuScore)).font(.largeTitle).fontWeight(.bold)
                    }
                    Spacer()
                }.foregroundColor(.white)
                Spacer()
            }
        }
    }
    func dealClicked(){
        let playerValue = Int.random(in: 2...14)
        playerCard = "card" + String(playerValue)
        let cpuValue = Int.random(in: 2...14)
        cpuCard = "card" + String(cpuValue)
        if(playerValue>cpuValue){
            playerScore+=1
        }else if (playerValue<cpuValue){
            cpuScore+=1
        }
    }
}

#Preview {
    ContentView()
}
