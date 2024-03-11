//
//  SheetsUI.swift
//  SwiftUIBegin
//
//  Created by MP on 11.03.2024.
//

import SwiftUI

struct SheetsUI: View {
    
    @State var showSheets: Bool = false
    
    var body: some View {
        ZStack{
            Color.green
                .ignoresSafeArea()
            Button {
                showSheets.toggle()
            } label: {
                Text("Button")
                    .foregroundColor(.green)
                    .font(.headline)
                    .padding(20)
                    .background(Color.white)
                    .cornerRadius(10)
            }
            //ЛИСТ МОЖЕТ БЫТЬ ТОЛЬКО ОДИИН! ЛОГИКУ IF ДОБАВЛЯТЬ НЕЛЬЗЯ! ЭТО НАДО ЗАПОМНИТЬ.
            //БУДЕТ ДОСТУПЕН или Первый вариант или второй. В зависимости от того какой раскоментировать.
//            .sheet(isPresented: $showSheets) {
//                SecondScreen()
//            }
            .fullScreenCover(isPresented: $showSheets) {
                            SecondScreen()
            }
        }
    }
}

struct SecondScreen: View {
    
    @Environment (\.presentationMode) var presentationMode
    
    var body: some View {
        ZStack (alignment: .topLeading) {
            Color.red
                .ignoresSafeArea()
            Button {
                presentationMode.wrappedValue.dismiss()
            } label: {
                Image(systemName: "xmark")
                    .foregroundColor(.white)
                    .font(.largeTitle)
                    .padding(20)
            }
        }
    }
}

struct SheetsUI_Previews: PreviewProvider {
    static var previews: some View {
        SheetsUI()
        //SecondScreen()
    }
}
