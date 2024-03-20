//
//  ActionSheetUI.swift
//  SwiftUIBegin
//
//  Created by MP on 19.03.2024.
//

import SwiftUI

struct ActionSheetUI: View {
    
    @State var showconfirmationDialog: Bool = false
    
    var body: some View {
        Button("Open confirmation dialog") {
            showconfirmationDialog.toggle()
        }
        .confirmationDialog(Text("This is the title"), isPresented: $showconfirmationDialog, titleVisibility: .visible) {
            getButtons()
        }
        message: {
        Text("This is the message")
        }
    }
    
    func getButtons () -> some View {
        return Group {
            Button("Change profile") {print("Hello, world!")}
            Button("Log out", role: .destructive) {}
            Button("Cancel", role: .cancel) {}
        }
    }
}

struct ActionSheetUI_Previews: PreviewProvider {
    static var previews: some View {
        ActionSheetUI()
    }
}
