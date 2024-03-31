//
//  AppStorageUI.swift
//  SwiftUIBegin
//
//  Created by MP on 31.03.2024.
//

import SwiftUI

struct AppStorageUI: View {
    
    //@State var curentUserName: String? В место этого используем код ниже. И при закрытии приложения и повторном открытии имя останеться.
    @AppStorage("name") var curentUserName: String?
    
    var body: some View {
        VStack(spacing: 20) {
            //Text(curentUserName!) NEVER USE!!!! Приложение просто сломается если в переменной пусто.
            Text(curentUserName ?? "Add Name Here") //если в прееменной ничего нет то подставляется значение по умолчанию. так делать можно.
            
//            В случае ниже, curentUserName предполагается быть опциональным значением. Если curentUserName содержит некоторое значение (не является nil), оно присваивается переменной name, и затем это значение используется внутри блока if для создания Text. Если curentUserName равно nil, блок if не выполняется, и текст не отображается.
            if let name = curentUserName {
                Text(name)
            }
            Button {
               curentUserName = "Max"
            } label: {
                Text("Save".uppercased())
            }

        }
    }
}

struct AppStorageUI_Previews: PreviewProvider {
    static var previews: some View {
        AppStorageUI()
    }
}
