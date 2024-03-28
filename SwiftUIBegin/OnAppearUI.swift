//
//  OnAppearUI.swift
//  SwiftUIBegin
//
//  Created by MP on 27.03.2024.
//

import SwiftUI

struct OnAppearUI: View {
    
    @State var myText: String = "Start Text"
    @State var count: Int = 0
    
    var body: some View {
        NavigationStack {
            ScrollView{
                Text(myText)
                LazyVStack {
                    ForEach(0..<50) { _ in
                        RoundedRectangle(cornerRadius: 25)
                            .frame(height: 200)
                            .padding()
                            .onAppear {
                                count += 1
                            }
                    }
                }
            }
            //когда появляется
            .onAppear(perform: {
                //Задержка выполнения от сейчас + 5 секунд
                DispatchQueue.main.asyncAfter(deadline: .now() + 5) {
                    myText = "This is the new text"
                }
            })
            //когда исчезает
            .onDisappear(perform: {
                myText = "Ending text"
            })
            .navigationTitle("On Appear \(count)")
        }
    }
}

struct OnAppearUI_Previews: PreviewProvider {
    static var previews: some View {
        OnAppearUI()
    }
}
