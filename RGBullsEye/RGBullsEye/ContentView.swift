//
//  ContentView.swift
//  RGBullsEye
//
//  Created by Boris Ofon on 12/26/22.
//

import SwiftUI

struct ContentView: View {
    @State var game = Game()
    @State var guess: RGB
    @State var showScore = false
    var body: some View {
        VStack {
            
            ColorCircle(rgbColor: game.target)
            if !showScore {
                Text("R: ?? G: ?? B: ??")
                    .padding()
            } else {
                Text(game.target.intString())
                    .padding()
            }
            ColorCircle(rgbColor: guess)
            
            Text(guess.intString())
            ColorSlider(value: $guess.red, trackColor: Color.red)
            ColorSlider(value: $guess.green, trackColor: Color.green)
            ColorSlider(value: $guess.blue, trackColor: Color.blue)
            
            Button("HIT ME") {
                showScore.toggle()
                game.check(guess: guess)
                print(showScore)
            }.alert(isPresented: $showScore) {
                Alert(
                    title: Text("Your Score"),
                    message: Text("\(game.scoreRound)"),
                    dismissButton: .default(Text("OK")){
                        game.startNewGame()
                        guess = RGB()
                    })
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        
        ContentView(guess: RGB())
    }
}

struct ColorSlider: View {
    
    @Binding var value: Double
    var trackColor: Color
    
    var body: some View {
        
        HStack {
            Text("0")
                .padding()
            Slider(value: $value)
                .accentColor(trackColor)
            Text("255")
        }
        .padding(.horizontal)
    }
}
