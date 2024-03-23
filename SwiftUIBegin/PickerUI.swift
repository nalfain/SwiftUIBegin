//
//  PickerUI.swift
//  SwiftUIBegin
//
//  Created by MP on 21.03.2024.
//

import SwiftUI

struct PickerUI: View {
    
    @State var selection: String = "Most Resent"
    @State var selection2: String = "1"
    let filterOption: [String] = ["Most Resent", "Most Popular", "Most Liked"]
    
    init() {
        UISegmentedControl.appearance().selectedSegmentTintColor = UIColor.red // Красное выделение на третьем пикере. Но это работает для всех кнопок в приложении:(
        
    }
    
    var body: some View {
        VStack{
            // First Picker не получилось сделать так что бы работало по кнопке только так получилось извратиться и имитировать кнопку:)
                
                Picker(selection: $selection) {
                    ForEach(filterOption, id: \.self) { option in
                        Text(option)
                            .tag(option)
                    }
                } label: { //Не показывает кнопку и сам лейбл, эта секция не работает.
                    Text("Filter")
                        
                }
//                .font(.caption) Не работает так же как и цвет для текста
                .accentColor(.black) // так работает меняет цвет а как для новых версий не знаю.
//                .bold()
                .foregroundColor(.gray)
                .padding(5)
                .padding(.horizontal, 10)
                .background {
                    Capsule()
                        .stroke(Color.gray, lineWidth: 2.0)
            }
            
            //Second Picker
            List {
                Picker(selection: $selection) {
                    ForEach(filterOption, id: \.self) { option in
                        Text(option)
                            .tag(option)
                    }
                    
                } label: {
                    HStack{
                        Text("Filter:")
                    }
                }
                //.accentColor(.black) Меняет цвет с синего.
                .pickerStyle(.menu)
                
            }
            Picker(selection: $selection) {
                ForEach(filterOption, id: \.self) { option in
                    Text(option)
                        .tag(option)
                }
                
            } label: {
                HStack{
                    Text("Filter:")
                }
            }
            .pickerStyle(.segmented)
            .background(.gray.opacity(0.3))
            
            Spacer()
            
            // Theard Picker
            HStack{
                Text("Weight")
                Text(selection)
            }
            Picker(selection: $selection) {
                ForEach(18..<100) { number in
                    Text("\(number)").tag("\(number)")
                }
            } label: {
                Text("Pecker")
            }
            .pickerStyle(.inline) // .automatic .segement whatever
        }
    }
}

struct PickerUI_Previews: PreviewProvider {
    static var previews: some View {
        PickerUI()
    }
}
