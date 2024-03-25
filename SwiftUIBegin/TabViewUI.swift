//
//  TabViewUI.swift
//  SwiftUIBegin
//
//  Created by MP on 24.03.2024.
//

import SwiftUI

struct TabViewUI: View {
    
    @State var selectedTab: Int = 3
    let icons: [String] = [
        "heart.fill", "globe", "house.fill", "person.fill"
    ]
    
    var body: some View {
        VStack(spacing: 0.0) {
            TabView(selection: $selectedTab) {
                HomeView(selectedTab: $selectedTab)
                    .tabItem {
                        Image(systemName: "house.fill")
                        Text("Home")
                    }
                    .foregroundColor(.red)
                    .tag(0)
                BrowseView(selectedTab: $selectedTab)
                    .tabItem {
                        Image(systemName: "globe")
                        Text("Browse")
                    }
                    .tag(1)
                ProfileView(selectedTab: $selectedTab, icons: icons) //Передаем переменную icons в саб вью
                    .tabItem {
                        Image(systemName: "person.fill")
                        Text("Profile")
                    }
                    .tag(2)
            }
            .accentColor(.white)
        }
    }
}

struct TabViewUI_Previews: PreviewProvider {
    static var previews: some View {
        TabViewUI()
    }
}

struct HomeView: View {
    
    @Binding var selectedTab: Int
    
    var body: some View {
        ZStack {
            Color.red.ignoresSafeArea().opacity(0.7)
            VStack{
                Text("HOME TAB")
                    .font(.largeTitle)
                    .foregroundColor(.white)
                Button {
                    selectedTab = 2
                } label: {
                    Text("Go to profile")
                        .font(.headline)
                        .padding()
                        .padding(.horizontal)
                        .background(Color.white)
                        .cornerRadius(10)
                }
            }
        }
    }
}

struct BrowseView: View {
    @Binding var selectedTab: Int
    var body: some View {
        ZStack {
            Color.red.ignoresSafeArea().opacity(0.7)
            Text("BROWSE TAB")
                .font(.largeTitle)
                .foregroundColor(.white)
        }
    }
}

struct ProfileView: View {
    @Binding var selectedTab: Int
    let icons: [String]
    var body: some View {
        VStack(spacing: 0) {
            ZStack(alignment: .top){
                Color.red.ignoresSafeArea().opacity(0.7)
                VStack{
                    Text("PROFILE TAB")
                        .font(.largeTitle)
                        .foregroundColor(.white)
                        .padding(.top)
                    
                    TabView {
                        ForEach(icons, id: \.self) { icon in
                            Image(systemName: icon)
                                .resizable()
                                .scaledToFit()
                                .padding(60)
                        }
                    }
                    .background(
                        .radialGradient(Gradient(colors: [Color.white, Color.red.opacity(0.0)]), center: .center, startRadius: 5, endRadius: 45)
                    )
                    .frame(height: 150)
                    .tabViewStyle(PageTabViewStyle())
                }
            }
            
            ZStack {
                Color.red.ignoresSafeArea().opacity(0.7)
                Text("It's my profile information kjhasdhk sa dkashd khjsad khsa dkhsdh kashd kjhsad kasdh sakdh kasjhd kasd kjhdqwkjhd kasjh khdwqkhasd kh sakjh kdjh askdj kh asdkh akshd khaskjh dkhas  werewrwe d ksadh kasjdh d this is the end :)")
                    .font(.largeTitle)
                    .foregroundColor(.white)
                    .frame(width: .infinity, height: 500)
                    .padding()
                Spacer()
            }
            
        }
    }
}
