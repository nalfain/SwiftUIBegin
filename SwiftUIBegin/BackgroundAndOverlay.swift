//
//  BackgroundAndOverlay.swift
//  SwiftUIBegin
//
//  Created by gost on 11.02.2024.
//

import SwiftUI

struct BackgroundAndOverlay: View {
    var body: some View {
        VStack {
            HStack {
//Circle 100 за ним еще Circle 120
                Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
                        .background(
                           Circle()
                                .fill(Color.blue)
                                .frame(width: 100, height: 100, alignment: .center)
                        )
                        .background(
                            Circle ()
                                .fill(Color.red)
                                .frame(width: 120, height: 120, alignment: .center)
                        )
//frame 100 за ней frame 120
                Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
                    .frame(width: 100, height: 100, alignment: .center)
                    .background(
                        // Color.red
                        // .linearGradient(Gradient(colors:[Color.red, Color.blue]), startPoint: .leading, endPoint: .trailing)
                        Circle()
                            .fill(Color.blue)
                    )
                    .frame(width: 120, height: 120, alignment: .center)
                    .background(
                        Circle ()
                            .fill(Color.red)
                    )
                
                Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
                    .background(
                        Circle()
                            .fill(.linearGradient(Gradient(colors:[Color.red, Color.blue]), startPoint: .leading, endPoint: .trailing))
                            .frame(width: 100, height: 100, alignment: .center)
                    )
                    .background(
                        Circle ()
                            .fill(.linearGradient(Gradient(colors:[Color.blue, Color.red]), startPoint: .leading, endPoint: .trailing))
                            .frame(width: 120, height: 120, alignment: .center)
                    )
            }
//Overlay В переди! Не сзади!
            Circle()
                .fill(Color.pink)
                .frame(width: 100, height: 100, alignment: .center)
                .overlay(
                    Text("1")
                        .font(.largeTitle)
                        .foregroundColor(Color.white)
                )
                .background(
                    Circle()
                        .fill(Color.purple)
                        .frame(width: 110, height: 110, alignment: .center)
                )
            Spacer()
            Rectangle()
                .frame(width: 80, height: 80)
                .overlay(alignment: .center) {
                    Rectangle()
                        .fill(Color.blue)
                        .frame(width: 30, height: 30)
                }
                .background(alignment: .center) {
                    Rectangle()
                        .fill(Color.red)
                        .frame(width: 100, height: 100)
                }
            Spacer()
            Rectangle()
                .frame(width: 80, height: 80)
                .overlay(alignment: .topLeading) {
                    Rectangle()
                        .fill(Color.blue)
                        .frame(width: 30, height: 30)
                }
                .background(alignment: .bottomTrailing) {
                    Rectangle()
                        .fill(Color.red)
                        .frame(width: 100, height: 100)
                }
            Spacer()
            Image(systemName: "heart.fill")
                .foregroundColor(.white)
                .font(.system(size: 40))
                .background(
                    Circle()
                        .fill(
                            .linearGradient(
                                Gradient(colors:[Color(#colorLiteral(red: 0.5568627715, green: 0.3529411852, blue: 0.9686274529, alpha: 1)), Color(#colorLiteral(red: 0.3647058904, green: 0.06666667014, blue: 0.9686274529, alpha: 1))]),
                                startPoint: .topLeading,
                                endPoint: .bottomTrailing)
                        )
                        .frame(width: 100, height: 100)
                        .shadow(color: Color(#colorLiteral(red: 0.3647058904, green: 0.06666667014, blue: 0.9686274529, alpha: 0.5)), radius: 10, x: 0.0, y: 10)
                        .overlay(alignment: .bottomTrailing) {
                            Circle()
                                .fill(Color.blue)
                                .frame(width: 30, height: 30)
                                .overlay(
                                    Text ("5")
                                        .font(.headline)
                                        .foregroundColor(.white)
                                )
                                .shadow(color: Color(#colorLiteral(red: 0.3647058904, green: 0.06666667014, blue: 0.9686274529, alpha: 0.5)), radius: 10, x: 5, y: 5)
                        }
                        
                )
            Spacer()
        }
    }
}

struct BackgroundAndOverlay_Previews: PreviewProvider {
    static var previews: some View {
        BackgroundAndOverlay()
    }
}
