//
//  contextmenubt.swift
//  suiexplore
//
//  Created by Sandesh Naik on 09/12/25.
//

import SwiftUI

struct contextmenubt: View {
    var body: some View {
        VStack {
            HStack {
                Circle()
                    .frame(width: 44, height: 44)
                Text("Sandesh Naik")
                    .contextMenu {
                        Text("Item 1")
                        Text("Item 2")
                        Text("Item 3")
                        Text("Item 4")
                    }
                Spacer()
                Button("Context") {
                    
                }
               
            }
        }.padding(.horizontal)
    }
}

#Preview {
    contextmenubt()
}
