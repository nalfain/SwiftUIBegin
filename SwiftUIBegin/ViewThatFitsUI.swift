//
//  ViewThatFitsUI.swift
//  SwiftUIBegin
//
//  Created by MP on 19.04.2024.
//

import SwiftUI

struct ViewThatFitsUI: View {
    var body: some View {
        ZStack {
            Color.red.ignoresSafeArea()
            //Эта функция выберет ту фразу которая впишется в фрейм из 3 
            ViewThatFits {
                Text("This is some texts that I would like to display to the user!")
                Text("This is some texts that I would like to display!")
                Text("This is some texts!")
                //Alternate variant of adaptation
    //                    .lineLimit(1)
    //                    .minimumScaleFactor(0.3)
            }
        }
        .frame(width: 350, height: 350)
    }
}

struct ViewThatFits_Previews: PreviewProvider {
    static var previews: some View {
        ViewThatFitsUI()
    }
}
