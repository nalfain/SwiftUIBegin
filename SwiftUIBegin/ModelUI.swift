//
//  ModelUI.swift
//  SwiftUIBegin
//
//  Created by MP on 29.03.2024.
//

import SwiftUI

struct UserModel: Identifiable {
    let displayName: String
    let userName: String
    let folowerCount: Int
    let id: String = UUID().uuidString
    let isVerified: Bool
}


struct ModelUI: View {
    
//    @State var users: [String] = [
//    "Max", "Mary", "Samanta", "Fedor"
//    ]
    //используем модель данных UserModel
    @State var users: [UserModel] = [
        UserModel(displayName: "Max", userName: "Max123", folowerCount: 100, isVerified: true),
        UserModel(displayName: "Mary", userName: "Mary1", folowerCount: 1000, isVerified: false),
        UserModel(displayName: "Samanta", userName: "Samanta", folowerCount: 10, isVerified: false),
        UserModel(displayName: "Fedor", userName: "Fedor777", folowerCount: 10000, isVerified: true)
    ]
    
    var body: some View {
        NavigationStack {
            List {
                //используем другой тип цикла ForEach
                ForEach(users) { user in
                    HStack(spacing: 15.0) {
                        Circle()
                            .frame(width: 35, height: 35)
                        VStack(alignment: .leading) {
                            Text(user.displayName)
                                .font(.headline)
                            Text("@\(user.userName)")
                                .foregroundColor(.gray)
                                .font(.caption)
                        }
                        Spacer()
                        if user.isVerified {
                            Image(systemName: "checkmark.seal.fill")
                            .foregroundColor(.blue)
                            
                        }
                        VStack(alignment: .leading){
                            Text("\(user.folowerCount)")
                                .font(.headline)
                            Text("Falowers")
                                .foregroundColor(.gray)
                                .font(.caption)
                        }
                    }
                }
//                ForEach(users, id: \.self) { name in
//                    HStack(spacing: 15.0) {
//                        Circle()
//                            .frame(width: 35, height: 35)
//                        Text(name)
//                    }
//                }
            }
            .listStyle(.insetGrouped)
            .navigationTitle("Users")
        }
    }
}

struct ModelUI_Previews: PreviewProvider {
    static var previews: some View {
        ModelUI()
    }
}
