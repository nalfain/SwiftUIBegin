//
//  SubmitTextFieldUI.swift
//  SwiftUIBegin
//
//  Created by MP on 11.04.2024.
//

import SwiftUI

struct SubmitTextFieldUI: View {
    
    @State private var myText: String = ""
    
    var body: some View {
        VStack {
            TextField("Placeholder...", text: $myText)
                .submitLabel(.route)
                .onSubmit {
                    print("Print somefing to the console")
                }
            TextField("Placeholder...", text: $myText)
                .submitLabel(.next)
                .onSubmit {
                    print("Print somefing to the console")
                }
            TextField("Placeholder...", text: $myText)
                .submitLabel(.search)
                .onSubmit {
                    print("Print somefing to the console")
                }
        }
        .padding()
    }
}

struct SubmitTextFieldUI_Previews: PreviewProvider {
    static var previews: some View {
        SubmitTextFieldUI()
    }
}
