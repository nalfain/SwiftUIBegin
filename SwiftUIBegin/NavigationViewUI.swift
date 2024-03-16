//
//  NavigationViewUI.swift
//  SwiftUIBegin
//
//  Created by MP on 12.03.2024.
//

//В место NavigationView надо использовать NavigationStack
import SwiftUI

struct NavigationViewUI: View {
    
    var body: some View {
        NavigationStack {
            ScrollView{
                
                NavigationLink("Hello, World!") {
                    My2Screen()
                }
                .foregroundColor(Color.red)
                
                Text("Hello, World!")
                Text("Hello, World!")
                Text("Hello, World!")
                Text("Hello, World!")
                Text("Hello, World!")
                Text("Hello, World!")
            }
            .navigationTitle("All Inboxes")
            .navigationBarTitleDisplayMode(.automatic)
            //.toolbar(.hidden) //используем .toolbar(.hidden) вместо NavigationBarHidden(true)
        }
    }
}

struct My2Screen: View {
    
    @Environment(\.presentationMode) var presentationMode
    
    var body: some View {
        
        ZStack {
            Color.green.ignoresSafeArea()
            .navigationTitle("Green screen")
            //.toolbar(.hidden)
            .toolbar {
                ToolbarItem(placement: .navigationBarLeading) {
                    Button("Edit") {
                        print("Editing...")
                    }
                }
                ToolbarItem(placement: .navigationBarTrailing) {
                    Button("Save") {
                        print("Saving...")
                    }
                }
            }
            NavigationLink("Click heare") {
                My3Screen()
            }
            .foregroundColor(.black)
            Spacer()
        }
    }
}

struct My3Screen: View {
    
    @Environment(\.presentationMode) var presentationMode
    
    var body: some View {
        ZStack() {
            Color.yellow.ignoresSafeArea()
            .toolbar(.hidden)
            VStack {
                HStack{
                    Button {
                        presentationMode.wrappedValue.dismiss()
                    } label: {
                        Image(systemName: "xmark")
                            .foregroundColor(.black)
                            .padding(10)
                    }
                    Spacer()
                    NavigationLink {
                        Text("About Person")
                    } label: {
                        Image(systemName: "person.fill")
                            .foregroundColor(.black)
                    }
                    NavigationLink {
                        Text("Settings")
                    } label: {
                        Image(systemName: "gear")
                            .foregroundColor(.black)
                            .padding(.trailing, 5)
                    }
                }
                Spacer()
                Text("3rd screen")
                Spacer()
            }
        }
    }
}
struct NavigationViewUI_Previews: PreviewProvider {
    static var previews: some View {
      NavigationViewUI()
        //My2Screen()
        //My3Screen()
    }
}
