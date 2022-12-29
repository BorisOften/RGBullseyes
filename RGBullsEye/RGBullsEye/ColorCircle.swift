//
//  ColorCircle.swift
//  RGBullsEye
//
//  Created by Boris Ofon on 12/29/22.
//

import SwiftUI

struct ColorCircle: View {
    
    var rgbColor: RGB
    
    var body: some View {
        Circle()
            .fill(Color(red: rgbColor.red, green: rgbColor.green, blue: rgbColor.blue))
    }
}

struct ColorCircle_Previews: PreviewProvider {
    
  static var previews: some View {
      
      ColorCircle(rgbColor: RGB())
    .frame(width: 300, height: 300)
    .previewLayout(.sizeThatFits)
  }
}
