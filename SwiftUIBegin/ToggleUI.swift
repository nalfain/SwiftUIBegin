//
//  ToggleUI.swift
//  SwiftUIBegin
//
//  Created by MP on 21.03.2024.
//

import SwiftUI

struct ToggleUI: View {
    
    @State var tuggle1IsOn: Bool = false
    @State var tuggle2IsOn: Bool = false
    
    var body: some View {
        VStack{
            HStack{
                Text("Current status:")
                Text(tuggle1IsOn ? "Online".capitalized : "Offline".capitalized)
                    .foregroundColor(tuggle1IsOn ? .green : .red)
            }
            .font(.title)
            
            Toggle("Toggle Name", isOn: $tuggle1IsOn)
            Toggle(isOn: $tuggle2IsOn) {
                HStack {
                    Text("Toggle Name2")
                    Spacer()
                    Text(tuggle2IsOn ? "ONline" : "OFFline" )
                        .foregroundColor(tuggle2IsOn ? .green : .red)
                }
                
            }
            //.toggleStyle(SwitchToggleStyle(tint: .red)) //устареет в будещем.
            
            Spacer()
        }
        .padding()
    }
}

struct ToggleUI_Previews: PreviewProvider {
    static var previews: some View {
        ToggleUI()
    }
}
