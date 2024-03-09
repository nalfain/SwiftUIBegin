//
//  TernaryOperatorUI.swift
//  SwiftUIBegin
//
//  Created by MP on 09.03.2024.
//

import SwiftUI

struct TernaryOperatorUI: View {
    
    @State var isStartingState: Bool = false
    
    var body: some View {
        VStack(spacing: 20){
            Button("Button \(isStartingState.description)") {
                isStartingState.toggle()
            }
//Строка ниже равносильна предыдущему занятию IF isStartungState "True" "starting state!!!" else "Ending state")
            Text(isStartingState ? "Starting state!!!" : "Ending state")
            RoundedRectangle(cornerRadius: isStartingState ? 25 : 0)
                .fill(isStartingState ? Color.red : Color.blue)
                .frame(
                    width: isStartingState ? 200 : 50,
                    height:  isStartingState ? 400 : 50)
            Spacer()
        }
    }
}

struct TernaryOperatorUI_Previews: PreviewProvider {
    static var previews: some View {
        TernaryOperatorUI()
    }
}
