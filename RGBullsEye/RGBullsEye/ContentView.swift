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
    
    let circleSize: CGFloat = 0.275
    let labelHeight: CGFloat = 0.06
    let labelWidth: CGFloat = 0.53
    let buttonWidth: CGFloat = 0.87
    
    var body: some View {
        GeometryReader { proxy in
            ZStack {
                Color.element
                    .edgesIgnoringSafeArea(.all)
                VStack {
                    
                    ColorCircle(rgbColor: game.target, size: proxy.size.height * circleSize)
                    
                    if !showScore {
                        BevelText(
                            text: "R: ??? G: ??? B: ???",  width: proxy.size.width * labelWidth,
                            height: proxy.size.height * labelHeight)
                    } else {
                        BevelText(
                            text: game.target.intString(),  width: proxy.size.width * labelWidth,
                            height: proxy.size.height * labelHeight)
                    }
                    
                    ColorCircle(rgbColor: guess, size: proxy.size.height * circleSize)
                    BevelText(text: guess.intString(),width: proxy.size.width * labelWidth,
                              height: proxy.size.height * labelHeight)
                    ColorSlider(value: $guess.red, trackColor: Color.red)
                    ColorSlider(value: $guess.green, trackColor: Color.green)
                    ColorSlider(value: $guess.blue, trackColor: Color.blue)
                    
                    Button("HIT ME") {
                        showScore.toggle()
                        game.check(guess: guess)
                    }
                    .buttonStyle(NeuButtonStyle(width: proxy.size.width * buttonWidth,
                                                height: proxy.size.height * labelHeight))
                    .alert(isPresented: $showScore) {
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
            .font(.headline)
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
