//
//  animatecurves.swift
//  suiexplore
//
//  Created by Sandesh Naik on 28/11/25.
//

import SwiftUI

/*
 whenever animating anything you can control how you can control how animation
 looks by setting its velocity, speed and duration known as curves
 SwiftProvides default curvse
 */

struct animatecurves: View {
  
  @State private var move: Bool = false
  @State private var pageIndex: Int = 0
    var body: some View {
      VStack(spacing: 24) {
        Button("Animate Views") {
          withAnimation {
            move.toggle()
          }
        }
        
        Picker("", selection: $pageIndex) {
          Text("Page 1").tag(0)
          Text("Page 2").tag(1)
        }.pickerStyle(.segmented)
          .padding(.horizontal)
        
        VStack {
          if pageIndex == 0 {
            RoundedRectangle(cornerRadius: 24)
              .frame(width: 100, height: 80)
              .overlay {
                Text("Default")
                  .font(.headline)
                  .foregroundStyle(Color.white)
              }
              .offset(x: move ? 100 : -100)
              .animation(.default, value: move)
            
            RoundedRectangle(cornerRadius: 24)
              .frame(width: 100, height: 80)
              .overlay {
                Text("Linear")
                  .font(.headline)
                  .foregroundStyle(Color.white)
              }
              .offset(x: move ? 100 : -100)
              .animation(.linear, value: move)
            
            RoundedRectangle(cornerRadius: 24)
              .frame(width: 100, height: 80)
              .overlay {
                Text("EaseIn")
                  .font(.headline)
                  .foregroundStyle(Color.white)
              }
              .offset(x: move ? 100 : -100)
              .animation(.easeIn, value: move)
            
            RoundedRectangle(cornerRadius: 24)
              .frame(width: 100, height: 80)
              .overlay {
                Text("EaseOut")
                  .font(.headline)
                  .foregroundStyle(Color.white)
              }
              .offset(x: move ? 100 : -100)
              .animation(.easeOut, value: move)
            
            RoundedRectangle(cornerRadius: 24)
              .frame(width: 100, height: 80)
              .overlay {
                Text("EaseInOut")
                  .font(.headline)
                  .foregroundStyle(Color.white)
              }
              .offset(x: move ? 100 : -100)
              .animation(.easeInOut, value: move)
            
            RoundedRectangle(cornerRadius: 24)
              .frame(width: 100, height: 80)
              .overlay {
                Text("Bouncy")
                  .font(.headline)
                  .foregroundStyle(Color.white)
              }
              .offset(x: move ? 100 : -100)
              .animation(.bouncy, value: move)
            
          } else {
            
            RoundedRectangle(cornerRadius: 24)
              .frame(width: 100, height: 80)
              .overlay {
                Text("Spring")
                  .font(.headline)
                  .foregroundStyle(Color.white)
              }
              .offset(x: move ? 100 : -100)
              .animation(Animation.spring(response: 0.3, dampingFraction: 0.5), value: move)
            
            RoundedRectangle(cornerRadius: 24)
              .frame(width: 100, height: 80)
              .overlay {
                Text("InteractiveSpring")
                  .font(.headline)
                  .foregroundStyle(Color.white)
              }
              .offset(x: move ? 100 : -100)
              .animation(.interactiveSpring, value: move)
            
            RoundedRectangle(cornerRadius: 24)
              .frame(width: 100, height: 80)
              .overlay {
                Text("InterpolatingSpring")
                  .font(.headline)
                  .foregroundStyle(Color.white)
              }
              .offset(x: move ? 100 : -100)
              .animation(.interpolatingSpring, value: move)
          }
          Spacer()
        }
        .animation(.default, value: pageIndex)
        
        
      }
    }
}

#Preview {
    animatecurves()
}
