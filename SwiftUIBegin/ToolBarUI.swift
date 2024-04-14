//
//  ToolBarUI.swift
//  SwiftUIBegin
//
//  Created by MP on 13.04.2024.
//

import SwiftUI

struct ToolBarUI: View {
    
    @State private var textField: String = ""
    @State private var isSanded: Bool = false
    @State private var paths: [String] = []
    
    var body: some View {
        NavigationStack(path: $paths) {
            ZStack {
                Color.indigo.ignoresSafeArea()
                VStack {
                    ScrollView{
                        
                        Text("Hi All 😍")
                            .foregroundColor(.white)
                        
                        TextField("Send a message to the world...", text: $textField)
                            .background(Color.white).cornerRadius(5)
                            .padding(.horizontal)
                        
                        ForEach(1..<50) {  _ in
                            RoundedRectangle(cornerRadius: 10)
                                .fill(.white)
                                .frame(width: 200, height: 200)
                            
                        }
                    }
                }
            }
            //Old variant
            .navigationTitle("ToolBar")
//            .navigationBarItems(leading: Image(systemName: "heart.fill"),trailing: Image(systemName: "gear"))
            //New variant
            .toolbar {
                ToolbarItem(placement: .navigationBarLeading) {
                    Image(systemName: "heart.fill")
                }
                ToolbarItem(placement: .navigationBarTrailing) {
                        Image(systemName: "gear")
                }
//                ToolbarItem(placement: .principal) {
//                    HStack{
//                        Image(systemName: "house.fill")
//                        Image(systemName: "mail")
//                    }
//                }
                ToolbarItem(placement: .keyboard) {
                    Button {
                        isSanded.toggle()
                    } label: {
                        HStack {
                            Image(systemName: "globe")
                            Text(isSanded ? " - Sented" : " - Send")
                        }
                    }
                }
            }
            //Old .navigationBarHidden(true)
            //.toolbar(.hidden, for: .navigationBar) //Скрывает тулбар
            //.toolbarBackground(.hidden, for: .navigationBar) //Скрывает фон тулбара при прокрутке.
            //.toolbarColorScheme(.dark, for: .navigationBar) //Включить темную схему для навигейшен бара.
            .navigationBarTitleDisplayMode(.inline) // Перемещает заголовок сразу в toolbar
            .toolbarTitleMenu {
                Button {
                    paths.append("Screen 1")
                } label: {
                    Text("Screen 1")
                }
                Button {
                    paths.append("Screen 2")
                } label: {
                    Text("Screen 2")
                }
            }
            .navigationDestination(for: String.self) { value in
                Text("New screen \(value)")

//                .navigationDestination(for: String.self) { value in` - это модификатор, который добавляется к структуре `NavigationView`. Он определяет, какое представление отображать, когда навигация происходит для определенного типа значения. В данном случае мы указываем тип значения `String`, что означает, что этот модификатор будет реагировать на навигацию с типом `String`.
//
//                { value in` - это замыкание, которое принимает значение, переданное в навигации. В данном случае это значение `String`.
//
//                Text("New screen \(value)")` - это представление, которое будет отображаться, когда происходит навигация с типом `String`. В этом примере текстовое представление отображает строку "New screen", после чего следует значение, которое было передано в навигации.
//
//                Таким образом, если в каком-либо месте вашего кода происходит навигация с типом `String`, то это представление будет отображаться в результате этой навигации, и значение будет использоваться в этом текстовом представлении.
            }
        }
    }
}

struct ToolBarUI_Previews: PreviewProvider {
    static var previews: some View {
        ToolBarUI()
    }
}
