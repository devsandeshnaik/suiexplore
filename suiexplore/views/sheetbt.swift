//
//  sheetbt.swift
//  suiexplore
//
//  Created by Sandesh Naik on 29/11/25.
//

import SwiftUI

struct sheetbt: View {
    @State private var showSheet: Bool = false
    @State private var showFullCover: Bool = false

    var body: some View {
        VStack {
            HStack(spacing: 44) {
                Button("Show \n Sheet") {
                    showSheet.toggle()
                }
                .padding()
                .frame(maxHeight: .infinity)
                .background(RoundedRectangle(cornerRadius: 12))
                
                
                Button("Show \nFullScreen \nCover") {
                    showFullCover.toggle()
                }
                .padding()
                .frame(maxHeight: .infinity)
                .background(RoundedRectangle(cornerRadius: 12))
            }
            .fixedSize(horizontal: false, vertical: true)
            .multilineTextAlignment(.center)
        }
        .sheet(isPresented: $showSheet) {
            Color.blue
                .edgesIgnoringSafeArea(.bottom)
                .overlay {
                    VStack {
                        Text("This is sheet")
                            .font(.largeTitle)
                    }
                }
                .presentationDetents([.fraction(0.3)])
            // presentation detents allows use to set how much screen the sheet should cover
        }
        .fullScreenCover(isPresented: $showFullCover) {
            fullscreenview(showFullCover: $showFullCover)
                .transition(.slide)
        }
    }
}

struct fullscreenview: View {
    // There are two ways to close the presented sheets
    // 1. can bind the view to state presenting the view and then toggle it.
    @Binding var showFullCover: Bool
    // 2. Using presentation mode available in Environment.
    @Environment(\.presentationMode) var presentationMode
    var body: some View {
        Color.red
            .edgesIgnoringSafeArea(.all)
            .overlay {
                VStack {
                    Text("This is full screen cover")
                        
                    
                    Button("Close") {
                        showFullCover.toggle()
                    }
                    .foregroundStyle(.red)
                    .padding()
                    .background(Color.white)
                    .cornerRadius(16)
                }
            }
     
    }
}

#Preview {
    sheetbt()
}
