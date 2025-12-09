//
//  textfield.swift
//  suiexplore
//
//  Created by Sandesh Naik on 09/12/25.
//

import SwiftUI

struct textfield: View {
    @State private var testText: String = ""
    @State private var testEditor: String = ""
    var body: some View {
        VStack {
            TextField("Hello", text: $testText, axis: .vertical)
                .padding(.horizontal)
                .frame(height: 400)
                
                
            TextEditor(text: $testEditor)
                .colorMultiply(.accentColor)                .border(Color.gray.opacity(0.3))
                .padding(.horizontal)
               
            
            Color.red
        }
 }
        
      
}

#Preview {
    textfield()
}
