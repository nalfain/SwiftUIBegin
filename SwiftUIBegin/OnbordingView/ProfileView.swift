//
//  ProfileView.swift
//  SwiftUIBegin
//
//  Created by MP on 03.04.2024.
//

import SwiftUI

struct ProfileView: View {
    
    //for appStorage
    @AppStorage("name") var currentUserName: String?
    @AppStorage("age") var currentUserAge: Int?
    @AppStorage("gender") var currentUserGender: String?
    @AppStorage("signed_in") var currentUserSignedIn: Bool = false
    
    var body: some View {
        VStack(spacing: 20) {
            Image(systemName: "person.circle.fill")
                .resizable()
                .scaledToFit()
                .frame(width: 150, height: 150)
            Text(currentUserName ?? "You name heare")
            Text("This user is \(currentUserAge ?? 0)years old")
            Text("Their gender is \(currentUserGender ?? "Unknown")")
            Text("SIGN OUT")
                .foregroundColor(.white)
                .font(.headline)
                .frame(height: 55)
                .frame(maxWidth: .infinity)
                .background(.black)
                .cornerRadius(10)
                .onTapGesture {
                    signOut()
                }
        }
        .font(.largeTitle)
        .foregroundColor(.purple)
        .padding()
        .padding(.vertical, 40)
        .background(.white)
        .cornerRadius(10)
        .shadow(radius: 10)
    }
    
        
        func signOut () {
            currentUserAge = nil
            currentUserName = nil
            currentUserGender = nil
            withAnimation(.spring()) {
                currentUserSignedIn = false
            }
        }
}

struct ProfileView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileView()
    }
}
