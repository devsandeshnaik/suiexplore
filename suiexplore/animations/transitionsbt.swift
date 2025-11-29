//
//  transitionsbt.swift
//  suiexplore
//
//  Created by Sandesh Naik on 28/11/25.
//

import SwiftUI


/*
 Transition animates the view that are not on screen
 Basically adding and removing new views on screen
 */

struct transitionsbt: View {
    @State private var showNewView = false
    
    var body: some View {
        VStack {
            Button("Add New View") {
                    showNewView.toggle()
            }
            
            Spacer()
            
            if showNewView {
                RoundedRectangle(cornerRadius: 44)
                    .frame(width: 400, height: 400)
                    //.transition(.move(edge: .top).combined(with: .blurReplace))
                    .transition(.asymmetric(insertion: .opacity, removal: .scale))
                   
            }
        }
        .animation(.easeInOut, value: showNewView)
        .edgesIgnoringSafeArea(.bottom)
    }
}


#Preview {
    transitionsbt()
}
