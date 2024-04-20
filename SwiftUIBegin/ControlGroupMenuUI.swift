//
//  ControlGroupMenuUI.swift
//  SwiftUIBegin
//
//  Created by MP on 20.04.2024.
//

import SwiftUI

struct ControlGroupMenuUI: View {
    var body: some View {
        Menu("My menu") {
            // Не работает!
            ControlGroup {
                Button("Hi") {
                    //Action
                }
                Button("Hello") {
                    //Action
                }
                Button("Sorry") {
                    //Action
                }
            }
            Button("Hi") {
                //Action
            }
            Button("Hello") {
                //Action
            }
            Button("Sorry") {
                //Action
            }
        }
    }
}

struct ControlGroupMenuUI_Previews: PreviewProvider {
    static var previews: some View {
        ControlGroupMenuUI()
    }
}
