//
//  TextfieldUI.swift
//  SwiftUIBegin
//
//  Created by MP on 20.03.2024.
//

import SwiftUI

struct TextfieldUI: View {
    
    @State var textFieldText: String = " "
    @State var dataArray: [String] = []
    
    var body: some View {
        
        NavigationStack {
            VStack {
                TextField("Type something here ...", text: $textFieldText)
                   // .textFieldStyle(.roundedBorder)
                    .padding()
                    .background(Color.gray.opacity(0.3).cornerRadius(10))
                    .foregroundColor(.red)
                    .font(.headline)
                
                Button {
                    if textISApropriate() {
                        savingText()
                    }
                    
                } label: {
                    Text("Save".uppercased())
                        .padding()
                        .frame(maxWidth: .infinity)
                        .background(textISApropriate() ? Color.blue : Color.gray)
                        .cornerRadius(10)
                        .foregroundColor(.white)
                        .font(.headline)
                }
                .disabled(!textISApropriate())
                
                //Не понятно
                ForEach(dataArray, id: \.self) { data in
                    Text(data)
                }
                Spacer()
            }
            .padding()
            .navigationTitle("TextFieldUI")
        }
    }
    
    func textISApropriate() -> Bool {
        //chack text
        if textFieldText.count >= 3 {
            return true
        }
        return false
    }
    
    func savingText() {
        dataArray.append(textFieldText)
        textFieldText = ""
    }
}

struct TextfieldUI_Previews: PreviewProvider {
    static var previews: some View {
        TextfieldUI()
    }
}
