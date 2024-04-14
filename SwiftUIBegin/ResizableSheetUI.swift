//
//  ResizableSheetUI.swift
//  SwiftUIBegin
//
//  Created by MP on 14.04.2024.
//

import SwiftUI

struct ResizableSheetUI: View {
    
    @State private var showSheet: Bool = false
    @State private var isBillingPlus: Bool = false
    @State private var myDetents: PresentationDetent = .large
    
    var body: some View {
        Button {
            showSheet.toggle()
        } label: {
            Text("Click me")
        }
        .sheet(isPresented: $showSheet) {
            MyNextView(myDetents: $myDetents, isBillingPlus: $isBillingPlus)
            //Размеры листа устанавливаются тут. Разница между SET[] и Array[] в том что SET не может содержать повторяющихся элеменитов. Это так же можно вынести ниже если мы используем переменную @State private var myDetents: PresentationDetent = .large
                //.presentationDetents([.medium]) //Предустановленные уровни
                //.presentationDetents([.fraction(0.1), .height(150), .medium, .large]) // В процентах от 100, в пикселях,  + еще два уровня доступны.
                //.presentationDragIndicator(.hidden) //Скрывает полоску индикатора который показывает что лист можно развернуть.
                
        }
        .onAppear {
            showSheet = true
        }
    }
}


struct MyNextView: View {
    
    @Binding var myDetents: PresentationDetent
    @Binding var isBillingPlus: Bool
    var body: some View {
        ZStack {
            Color.red.ignoresSafeArea()
            VStack (alignment: .center, spacing: 20){
                Spacer()
                Group{
                    Text("You shold pay for resume...")
                        .font(.title)
                    Text("1 Euro and stay...")
                        .font(.title2)
                }
                .fontWeight(.semibold)
                .foregroundColor(.white)
                
                Button {
                    isBillingPlus = true
                } label: {
                    Spacer()
                    VStack {
                        Text(isBillingPlus ? "PAYED" : "PAY")
                            .padding()
                            .padding()
                            .foregroundColor(.white)
                            .background(
                                Capsule()
                                    .stroke(Color.white, lineWidth: 2.0)
                                    .frame(width: 80, height: 80)
                            )
                    }
                    Spacer()
                }
                .font(.title2)
                .fontWeight(.semibold)
                .foregroundColor(.white)
                Spacer()
                HStack{
                    Button {
                        myDetents = .medium //Это работает только для тех что указаны в .presentationDetents([.fraction(0.17), .height(150), .medium, .large], selection: $myDetents)
                    } label: {
                        Text("Medium")
                    }
                    Button {
                        myDetents = .large
                    } label: {
                        Text("Large")
                    }
                    Button {
                        myDetents = .fraction(0.17)
                    } label: {
                        Text("17%")
                    }
                    Button {
                        myDetents = .height(700)
                    } label: {
                        Text("700 pixels")
                    }
                }
            }
            .presentationDetents([.fraction(0.17), .height(700), .medium, .large], selection: $myDetents)
            .interactiveDismissDisabled(isBillingPlus ? false : true) // Запрещает скрыть лист. Напримет триальный режим заплати и продолжай пользоваться.
        }
    }
}

struct ResizableSheetUI_Previews: PreviewProvider {
    static var previews: some View {
        ResizableSheetUI()
    }
}
