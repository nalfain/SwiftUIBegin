//
//  FocusStateUI.swift
//  SwiftUIBegin
//
//  Created by MP on 09.04.2024.
//

import SwiftUI

struct FocusStateUI: View {
    //Запускать с эмулятором
    // Что бы появилась клавиатура Command-K или go to I/O -> Keyboard -> Uncheck "Connect Hardware Keyboard"
    // Пример использования при нажатии кнопки отправить переводит курсор в поле где отсутствует информация при регистрации.
    
    //Если у нам таких поолей много можно использовать enum
    enum onbordingFields: Hashable {
        case userName
        case userPassword
    }
    //В место @FocusState private var userNameInFocus: Bool и @FocusState private var userPasswordInFocus: Bool используем
    @FocusState private var fildsInFocus: onbordingFields?
    
    //@FocusState private var userNameInFocus: Bool
    @State private var userName: String = ""
    //@FocusState private var userPasswordInFocus: Bool
    @State private var userPassword: String = ""
    
    
    var body: some View {
        VStack{
            TextField("Add your name here ...", text: $userName)
                //.focused($userNameInFocus) // Не используем для enum
                .focused($fildsInFocus, equals: .userName) //используем для enum
                .padding(.leading)
                .frame(height: 55)
                .frame(maxWidth: .infinity)
                .background(Color.gray.brightness(0.3))
                .cornerRadius(10)
            
            SecureField("Add your password here ...", text: $userPassword) //В окне не будет видно что мы запускаем.
            // Пример использования при нажатии кнопки отправить переводит курсор в поле где отсутствует информация при регистрации.
                //.focused($userPasswordInFocus) // Не используем для enum
                .focused($fildsInFocus, equals: .userPassword) //используем для enum
                .padding(.leading)
                .frame(height: 55)
                .frame(maxWidth: .infinity)
                .background(Color.gray.brightness(0.3))
                .cornerRadius(10)
            
            Button("Sign UP 🍖" ) {
                let userNameIsValid = !userName.isEmpty
                let userPasswordIsValid = !userPassword.isEmpty
                
                if userNameIsValid && userPasswordIsValid {
                    print("Sign in....")
                }
                else if userNameIsValid {
                    fildsInFocus = .userPassword //используем для enum
                    //userNameInFocus = false // Не используем для enum
                    //userPasswordInFocus = true // Не используем для enum
                }
                else {
                    fildsInFocus = .userName //используем для enum
                    //userNameInFocus = true // Не используем для enum
                    //userPasswordInFocus = false // Не используем для enum
                }
            }
            // Меняем значение поле то попадает в фокус то нет.
            //            Button("Change Focuse State" ) {
            //                userNameInFocus.toggle()
            //            }
        }
        .padding(40)
        // Когда появляется этот Vstack через задержку в 0.5 сек фокус попадает поле UserName
        //        .onAppear {
        //            DispatchQueue.main.asyncAfter(deadline: .now() + 0.5) {
        //                self.userNameInFocus = true
        //            }
    }
}

struct FocusStateUI_Previews: PreviewProvider {
    static var previews: some View {
        FocusStateUI()
    }
}
