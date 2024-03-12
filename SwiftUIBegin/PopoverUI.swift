//
//  PopoverUI.swift
//  SwiftUIBegin
//
//  Created by MP on 12.03.2024.
//

//Реализуем Sheeets
//Реализуем Animation
//Реализуем Transition
import SwiftUI

struct PopoverUI: View {
    
    @State var showNewScreen: Bool = false
    
    var body: some View {
        ZStack {
            Color.orange
                .ignoresSafeArea()
            VStack {
                Button("BUTTON") {
                    showNewScreen.toggle()
                }
                .font(.largeTitle)
                Spacer()
            }
//            //Metod 1 Sheet - работает как надо но для новых версий надо использовать сразу @Binding
//            .sheet(isPresented: $showNewScreen) {
//                NewScreen(showNewScreen: $showNewScreen)
//            }
//            //Metod 2 Transition. - Работает.
//            ZStack {
//                if showNewScreen {
//                        NewScreen(showNewScreen: $showNewScreen)
//                            .padding(.top,100)
//                            .transition(.move(edge: .bottom))
//                    }
//            }
//            .zIndex(2.0) // Если не добавить ZStack и .zIndex анимация не работает.
            
            //Metod 3 Animation offset работает
            NewScreen(showNewScreen: $showNewScreen)
                .padding(.top, 100)
                .offset(y: showNewScreen ? 0 : UIScreen.main.bounds.height)
               // .animation(.spring(), value: showNewScreen)
            
        }
    }
}

struct NewScreen: View {
    
    @Binding var showNewScreen: Bool
    
    var body: some View {
        ZStack(alignment: .topLeading) {
            Color.purple
                .ignoresSafeArea()
            Button {
                showNewScreen = false
            } label: {
                Image(systemName: "xmark")
                    .foregroundColor(.white)
                    .font(.largeTitle)
                    .padding(20)
            }

        }
        .animation(.spring(), value: showNewScreen)
    }
}



struct PopoverUI_Previews: PreviewProvider {
    static var previews: some View {
        PopoverUI()
    }
}
