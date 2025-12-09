//
//  alertsandsheetsbt.swift
//  suiexplore
//
//  Created by Sandesh Naik on 08/12/25.
//

import SwiftUI

struct alertsandsheetsbt: View {
    
    @State private var showActionSheet: Bool = false
    @State private var showUserNotLoggedInAlert: Bool = false
    let data: Int = 44
    
    var body: some View {
        VStack {
            Button("Show Alert") {
                showUserNotLoggedInAlert.toggle()
            }
            
            Button("Show Sheet") {
                showActionSheet.toggle()
            }
        }
        .alert("Hello", isPresented: $showUserNotLoggedInAlert,
               presenting: data) { data in
            VStack {
                Text("Hello, \(data)!")
                Text("Hello, \(data)!")
            }
        } message: { _ in
            Image("sandesh")
                .resizable()
                .aspectRatio(contentMode: .fit)
        }
        .actionSheet(isPresented: $showActionSheet) {
            ActionSheet(title: Text("Select City"), buttons: [
                .destructive(Text("Pune")),
                .destructive(Text("Panaji")),
                .destructive(Text("Bangalore")),
                .destructive(Text("Mumbai")),
                .destructive(Text("Delhi"))
            ])
        }
    

    }
}

#Preview {
    alertsandsheetsbt()
}
