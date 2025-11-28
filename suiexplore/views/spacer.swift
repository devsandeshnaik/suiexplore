//
//  spacer.swift
//  suiexplore
//
//  Created by Sandesh Naik on 18/11/25.
//

import SwiftUI

struct spacer: View {
    /*
      Just like any other views spacer can have modifiers.
     */
    var body: some View {
        VStack {
            Text("Hello, World!")
            Spacer()
                .frame(width: 24, height: 100)
                .background(Color.blue)
                .overlay {
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                             Color.red
                        .frame(width: 16)
                }
            Text("Hello, World!")
        }
        
    }
}

#Preview {
    spacer()
}
