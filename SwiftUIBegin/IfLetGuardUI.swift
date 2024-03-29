//
//  IfLetGuardUI.swift
//  SwiftUIBegin
//
//  Created by MP on 28.03.2024.
//

import SwiftUI

struct IfLetGuardUI: View {
    
    //@State var dysplayText: String = ""
    @State var dysplayText: String? = nil
    @State var isLoading: Bool = false
    @State var currentUserID: String? = nil
    
    var body: some View {
        NavigationStack{
            VStack{
                Text("Heare we are practicing safe codind")
                //Если dysplayText не nil то мы присваиваем переменной text значение dysplayText и выводим его на экран.
                if let text = dysplayText {
                    Text(text)
                        .font(.title)
                }
                
                if isLoading {
                    ProgressView()
                }
                //Восклицательный знак игнорирует ошибку но ТАК ДЕЛАЮТ ТОЛЬКО ПЛОХИЕ ПРОГРАМИСТЫ!
                // Не далай так никогда!
                //Text(dysplayText!)
                //    .font(.title)
                
                Spacer()
            }
            .navigationTitle("Safe Coding")
            .onAppear {
                loadDataGuard()
            }
        }
    }
    func loadData () {
        if let userID = currentUserID {
            isLoading = true
            DispatchQueue.main.asyncAfter(deadline: .now() + 3) {
                dysplayText = "This is a new data! UserID is: \(userID)"
                isLoading = false
            }
        }
        else {
            dysplayText = "Error user. There is no User ID!"
        }
    }
    
    func loadDataGuard() {
        
        guard let userID = currentUserID else {
            dysplayText = "Error user. There is no User ID!"
            return
        }
        isLoading = true
        DispatchQueue.main.asyncAfter(deadline: .now() + 3) {
            dysplayText = "This is a new data! UserID is: \(userID)"
            isLoading = false
        }
    }
}

struct IfLetGuardUI_Previews: PreviewProvider {
    static var previews: some View {
        IfLetGuardUI()
    }
}
