//
//  ColorCircle.swift
//  RGBullsEye
//
//  Created by Boris Ofon on 12/29/22.
//

import SwiftUI

struct ColorCircle: View {
    
    var rgbColor: RGB
    let size: CGFloat
    
    var body: some View {
        
        ZStack {
            Circle()
                .fill(Color.element)
                .northWestShadow()
            Circle()
                .fill(Color(red: rgbColor.red, green: rgbColor.green, blue: rgbColor.blue))
                .padding(15)
        }
        .frame(width: size, height: size)
    }
}

struct ColorCircle_Previews: PreviewProvider {
    
  static var previews: some View {
      ZStack {
          Color.element
          ColorCircle(rgbColor: RGB(), size: 200)
        .frame(width: 100, height: 300)
        .previewLayout(.sizeThatFits)
      }
      
  }
}
