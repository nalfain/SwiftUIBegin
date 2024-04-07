//
//  AsyncImageUI.swift
//  SwiftUIBegin
//
//  Created by MP on 06.04.2024.
//

import SwiftUI

struct AsyncImageUI: View {
    
    let url = URL(string: "https://static.tildacdn.com/tild3732-3539-4637-a162-383232336638/shutterstock_1047718.jpg")
    
    var body: some View {
        ScrollView {
            VStack(spacing: 100) {
                //AsyncImage(url: url)
                AsyncImage(url: url) { returnImage in
                    returnImage
                        .resizable()
                        .frame(width: 150, height: 150)
                        .cornerRadius(20)
                } placeholder: {
                    ProgressView()
                }
/*
case empty
No image is loaded.
case success(Image)
An image succesfully loaded.
case failure(Error) - не используется.
An image failed to load with an error.
*/
                AsyncImage(url: url) { phase in
                    switch phase {
                    case .empty:
                        ProgressView()
                    case .success(let returnImage):
                        returnImage
                            .resizable()
                            .frame(width: 150, height: 150)
                            .cornerRadius(20)
                    default:
                        Text("Error")
                    }
                }
            }
        }
    }
}

struct AsyncImageUI_Previews: PreviewProvider {
    static var previews: some View {
        AsyncImageUI()
    }
}
