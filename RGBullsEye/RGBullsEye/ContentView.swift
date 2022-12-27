//
//  ContentView.swift
//  RGBullsEye
//
//  Created by Boris Ofon on 12/26/22.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Color(red: 0.5, green: 0.5, blue: 0.5)
            Text("R: ?? G: ?? B: ??")
                .padding()
            Color(red: 0.5, green: 0.5, blue: 0.5)
            Text("R: 204 G: 76 B: 178")
                .padding()
            Text("HIT ME")
            Slider(value: .constant(0.5))
            Button("HIT ME") {
                /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Action@*/ /*@END_MENU_TOKEN@*/
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
