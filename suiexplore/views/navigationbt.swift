//
//  navigationbt.swift
//  suiexplore
//
//  Created by Sandesh Naik on 01/12/25.
//

import SwiftUI

struct navigationbt: View {
    var body: some View {
      NavigationStack {
        VStack {
          ForEach(0..<10, id: \.self) { val in
            NavigationLink("\(val)", value: val)
          }
            
        }
        .navigationDestination(for: Int.self, destination: { val in
          Text("\(val)")
        })
        .navigationTitle("Hello")
      }
    }
}

#Preview {
    navigationbt()
}
