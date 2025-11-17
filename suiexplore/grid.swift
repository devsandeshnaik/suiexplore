//
//  grid.swift
//  suiexplore
//
//  Created by Sandesh Naik on 17/11/25.
//

import SwiftUI

// MARK: - Grid
struct grid: View {
  var body: some View {
    Grid {
      ForEach(1..<11) { limit in
        GridRow {
          ForEach(0..<limit) { num in
            Image(systemName: "\(num).square")
              .imageScale(.large)
          }
        }
        
      }
    }
  }
}

// MARK: - Grid Alignment
struct alignment: View {
  /*
   alignment parameter of the grid sets alinment to the content of the column. This really comes into effect then the adjecent column is taller or wider, where in the current columsn gets more hwight or width to move content around.
   */
  var body: some View {
    Grid(alignment: .center) {
      GridRow {
        Text("Short") // this content moves based on alignment
        Text("This is the longer text content which results in greater heigt to the row")
      }
      GridRow {
        Text("Longer text to increase with")
        Color.red
      }
      .frame(height: 100)
    }
    .frame(width: 200)
  }
}

// MARK: - Grid Sizing
struct sizing: View {
  /*
   1. Any view places outside GridRow but inside Grid will follow its own layout system
   2. .gridCellUnsizedAxes(.vertical), does not determin its own size but relies on other row cell or column cell for size
   */
  @State private var isOn = false
  var body: some View {
    Grid(alignment: .center, horizontalSpacing: 16, verticalSpacing: 12) {
      GridRow(alignment: .bottom) {
        Color.red.clipShape(RoundedRectangle(cornerRadius: 32))
        Color.blue.clipShape(RoundedRectangle(cornerRadius: 32))
          .frame(width: 80, height: 44) // sets width for entire column orange cells are unsized.
        Color.cyan.clipShape(RoundedRectangle(cornerRadius: 32))
      }
      
      Color.yellow.clipShape(RoundedRectangle(cornerRadius: 32))
      
      GridRow {
        Color.green.clipShape(RoundedRectangle(cornerRadius: 32))
        Color.orange.clipShape(RoundedRectangle(cornerRadius: 32))
          .gridCellUnsizedAxes(.horizontal)
        Color.purple.clipShape(RoundedRectangle(cornerRadius: 32))
          .frame(height: 150)
      }
      
      GridRow {
        Color.green.clipShape(RoundedRectangle(cornerRadius: 32))
          .gridCellUnsizedAxes(.vertical)
        Color.orange.clipShape(RoundedRectangle(cornerRadius: 32))
          .gridCellUnsizedAxes(.vertical)
          .gridCellUnsizedAxes(.horizontal)
        Color.purple.clipShape(RoundedRectangle(cornerRadius: 32))
          .frame(height: 150)// sets height for row as first two cells are unsized.
      }
    }
  }
}



#Preview("grid") {
    grid()
}

#Preview("grid_alignment") {
  alignment()
}

#Preview("grid_sizing") {
  sizing()
}
