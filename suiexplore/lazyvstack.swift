//
//  lazyvstack.swift
//  suiexplore
//
//  Created by Sandesh Naik on 17/11/25.
//

import SwiftUI

struct SectionHeaderView: View {
  let title: String
  var body: some View {
    Text(title)
  }
}

struct SectionFooterView: View {
  let title: String
  var body: some View {
    Text(title)
  }
}

struct Characters : Identifiable {
  let id = UUID()
  let title: String
  let chars: [String]
}

struct lazyvstack: View {
  
  let sections = [
    Characters(title: "Numbers", chars: ["1","2","3","4","5","6","7","8","9"]),
    Characters(title: "Numbers", chars: ["a","b","c","d","e","f","g","h","i"])
  ]
  var body: some View {
    ScrollView {
      LazyVStack(alignment: .leading, spacing: 16, pinnedViews: [.sectionHeaders, .sectionFooters]) {
        ForEach(sections) { section in
          Section(header: SectionHeaderView(title: section.title),
                  footer: SectionFooterView(title: section.title + " Ended")) {
            ForEach(section.chars, id: \.self) { char in
              Text(char)
            }
          }
        }
      }
    }
  }
}


#Preview {
    lazyvstack()
}
