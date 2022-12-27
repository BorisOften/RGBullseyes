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
    
    var body: some View {
        VStack {
            Color(rgbStruct: game.target)
            Text("R: ?? G: ?? B: ??")
                .padding()
            Color(rgbStruct: guess)
            Text(guess.intString())
            
            ColorSlider(value: $guess.red, trackColor: Color.red)
            ColorSlider(value: $guess.green, trackColor: Color.green)
            ColorSlider(value: $guess.blue, trackColor: Color.blue)
            
            Button("HIT ME") {
                print("I got hit")
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        
        ContentView(guess: RGB(red: 0.3, green: 0.3, blue: 0.7))
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
