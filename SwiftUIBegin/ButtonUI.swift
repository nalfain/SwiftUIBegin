//
//  ButtonUI.swift
//  SwiftUIBegin
//
//  Created by MP on 06.03.2024.
//

import SwiftUI

struct ButtonUI: View {
    
    @State var title: String = "This is my title"
    
    var body: some View {
        VStack (spacing: 20) {
            Text(title)
            Button("Press Me") {
                self.title = "Button was pressed"
            }
            Button {
                self.title = "Button 2 was pressed"
            } label: {
                //в этом варианте может быть все что угодно и другой стек и картинка и фигуры и другой вью.
                Text("Save".uppercased())
                    .font(.headline)
                    .fontWeight(.semibold)
                    .foregroundColor(.white)
                    .padding()
                    .padding(.horizontal, 20)
                    .background(
                        Color.blue
                            .cornerRadius(10)
                            .shadow(radius: 10)
                    )
            }
            Button {
                self.title = "Button 3 was pressed"
            } label: {
                Circle()
                    .frame(width: 75, height: 75)
                    .foregroundColor(.white)
                    .shadow(radius: 10)
                    .overlay {
                        Image(systemName: "heart.fill")
                            .foregroundColor(Color(#colorLiteral(red: 0.5807225108, green: 0.066734083, blue: 0, alpha: 1)))
                            .font(.largeTitle)
                    }
            }
            Button {
                self.title = "Button 4 was pressed"
            } label: {
                Text("Finish".uppercased())
                    .font(.caption)
                    .bold()
                    .foregroundColor(.gray)
                    .padding()
                    .padding(.horizontal, 10)
                    .background {
                        Capsule()
                            .stroke(Color.gray, lineWidth: 2.0)
                    }
            }
        }
    }
}

struct ButtonUI_Previews: PreviewProvider {
    static var previews: some View {
        ButtonUI()
    }
}
