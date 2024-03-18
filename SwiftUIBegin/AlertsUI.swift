//
//  AlertsUI.swift
//  SwiftUIBegin
//
//  Created by MP on 16.03.2024.
//

import SwiftUI

struct AlertsUI: View {
    
    @State var showalert: Bool = false
    @State var backgroundColor: Color = Color.yellow
    @State var alertsType: MyAlerts? = nil
    
    enum MyAlerts {
        case susses
        case error
        
    }
    
    var body: some View {
        ZStack{
            backgroundColor.ignoresSafeArea()
            Button ("Click here") {
                showalert.toggle()
            }
        }
            //        .alert(Text("Error"), isPresented: $showalert) {
            //            Button(role: .cancel) {
            //            } label: {
            //                Text("Cancel")
            //            }
            //            Button(role: .destructive) {
            //
            //            } label: {
            //                Text("Finish")
            //            }
            //        } message: {
            //            Text("Unable to find location")
            //        }
            .alert(Text("Error"), isPresented: $showalert) {
                Button(role: .cancel) {
                    backgroundColor = Color.red
                } label: {
                    Text("Project RED")
                }
                
            } message: {
                Text("Allarm in the word!")
            }
    }
}

struct AlertsUI_Previews: PreviewProvider {
    static var previews: some View {
        AlertsUI()
    }
}
