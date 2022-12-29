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
        Circle()
            .fill(Color(red: rgbColor.red, green: rgbColor.green, blue: rgbColor.blue))
            .frame(width: size, height: size)
    }
}

struct ColorCircle_Previews: PreviewProvider {
    
  static var previews: some View {
      
      ColorCircle(rgbColor: RGB(), size: 200)
    .frame(width: 100, height: 300)
    .previewLayout(.sizeThatFits)
  }
}
