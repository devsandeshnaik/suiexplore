//
//  hstack.swift
//  suiexplore
//
//  Created by Sandesh Naik on 17/11/25.
//

import SwiftUI

struct hstack: View {
    var body: some View {
      VStack {
        HStack(alignment: .firstTextBaseline) {
          Text("Hello World")
            .background(Color.red)
          Text("This is the first statement written as good will while learning any programming language")
            .background(Color.green)
        }
        
        Divider()
        
        HStack(alignment: .lastTextBaseline) {
          Text("Hello World")
            .background(Color.red)
          Text("This is the first statement written as good will while learning any programming language")
            .background(Color.green)
        }
      }
    }
}

#Preview {
    hstack()
}
