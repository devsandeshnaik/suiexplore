//
//  animationbt.swift
//  suiexplore
//
//  Created by Sandesh Naik on 28/11/25.
//

import SwiftUI

struct animationbt: View {
  
  @State var animated: Bool = false
  var body: some View {
    VStack {
      Button("Button") {
          animated.toggle()
        
      }
      Spacer()
      RoundedRectangle(cornerRadius: animated ? 50 : 25)
        .fill(animated ? Color.red : Color.green)
        .frame(width: animated ? 100 :  300, height: animated ? 100 : 300)
        .rotationEffect(Angle(degrees: animated ? 360 : 0))
        .animation(.default, value: animated)
      Spacer()
    }
  }
}

#Preview {
    animationbt()
}
