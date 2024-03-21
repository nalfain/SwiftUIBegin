//
//  TextEditorUI.swift
//  SwiftUIBegin
//
//  Created by MP on 21.03.2024.
//

import SwiftUI

struct TextEditorUI: View {
    
    @State var textEditorText: String = ""
    @State var savedText: String = ""
    
    var body: some View {
        NavigationStack{
            VStack{
                TextEditor(text: $textEditorText)
                    .frame(height: 250)
                    .foregroundColor(.red)
                    .scrollContentBackground(.hidden) // we cannot change the background color of 'TextEditor' directly, first we have to hide the default background using this code, then apply background.
                    .background(.gray.opacity(0.2)) // To see this
                    .cornerRadius(10)
                Button {
                    savedText=textEditorText
                } label: {
                    Text("Save".uppercased())
                        .font(.headline)
                        .foregroundColor(.white)
                        .padding()
                        .frame(maxWidth: .infinity)
                        .background(Color.blue)
                        .cornerRadius(10)
                }
                Text(savedText)
                Spacer()
            }
            .navigationTitle("TextEditorUI")
            .padding()
            //.background(.green)
        }
    }
}

struct TextEditorUI_Previews: PreviewProvider {
    static var previews: some View {
        TextEditorUI()
    }
}
