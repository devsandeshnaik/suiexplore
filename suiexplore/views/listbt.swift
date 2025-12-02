//
//  listbt.swift
//  suiexplore
//
//  Created by Sandesh Naik on 01/12/25.
//

import SwiftUI

struct listbt: View {
  @State var fruits = ["Apple", "Banana", "Orange", "Sweet Lime", "Avacado", "Grapes"]
  @State var vegetabled = ["Carrot", "Lady Finger", "Egg plant", "Potato", "Beans", "Corn"]
  @State var berries = ["Blueberry", "Strawberry", "Cherries", "Rasberries"]
  
  @State private var fruitsExpanded: Bool = true
  @State private var vegetablesExpanded: Bool = true
  @State private var berriesExpanded: Bool = true
  
  var body: some View {
    NavigationStack {
      List {
        Section("Fruits", isExpanded: $fruitsExpanded)  {
          ForEach(fruits, id: \.self) { txt in
            Text(txt)
          }
          .onDelete { indexSet in
            fruits.remove(atOffsets: indexSet)
          }
        }
        
        Section("Vegitables", isExpanded: $vegetablesExpanded) {
          ForEach(vegetabled, id: \.self) { txt in
            Text(txt)
          }
          .onDelete { indexSet in
            vegetabled.remove(atOffsets: indexSet)
          }
        }
        
        Section("Berries", isExpanded: $berriesExpanded)  {
          ForEach(berries, id: \.self) { txt in
            Text(txt)
          }
          .onDelete { indexSet in
            berries.remove(atOffsets: indexSet)
          }
          .onMove { start, end in
            berries.move(fromOffsets: start, toOffset: end)
          }
        }
        
      }
     
      .listStyle(.insetGrouped)
      .navigationTitle("List")
      .navigationBarItems(leading: EditButton())
    }
  }
}

#Preview {
    listbt()
}
