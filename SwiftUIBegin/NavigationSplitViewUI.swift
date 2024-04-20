//
//  NavigationSplitViewUI.swift
//  SwiftUIBegin
//
//  Created by MP on 19.04.2024.
//

import SwiftUI


//NavigationSplitView using for!!!!! -> IPAD, MAC OS, VISION OS

struct NavigationSplitViewUI: View {
    
    @State private var visibility: NavigationSplitViewVisibility = .all
    @State private var selectCategory: FoodCategory? = nil //optional type значание по умолчанию нет
    @State private var selectFruit: Fruits? = nil
    
    var body: some View {
        VStack(spacing: 20){
//            //2 parts variant
//            NavigationSplitView {
//                Color.red
//            } detail: {
//                Color.blue
//            }
//            //3 part variant
//            NavigationSplitView {
//                Color.red
//            } content: {
//                Color.blue
//            } detail: {
//                Color.green
//            }
            
            NavigationSplitView(columnVisibility: $visibility) {
//Universal code wich works on iphone 
                List(FoodCategory.allCases, id: \.rawValue, selection: $selectCategory) { category in
                    NavigationLink(category.rawValue.capitalized, value: category)
                }
                .navigationTitle("Category")
            } content: {
                if let selectCategory {
                    switch selectCategory {
                    case .fruits:
                        Group {
                            List(Fruits.allCases, id: \.rawValue, selection: $selectFruit) { fruit in
                                NavigationLink(fruit.rawValue.capitalized, value: fruit)
                            }
                        }
                        .navigationTitle("Fruits")
                    case .vedgetables:
                            EmptyView()
                    case .meats:
                            EmptyView()
                    }
                }
                else {
                    Text("Select a category to begin!")
                }
            } detail: {
                if let selectFruit {
                    Text("You selected: \(selectFruit.rawValue)")
                        .navigationTitle(selectFruit.rawValue.capitalized)
                }
                else {
                    Text("Select a somefing..")
                }
            }
            .navigationSplitViewStyle(.balanced) // Стиль вкладки

        }
    }
}


//Когда вы объявляете перечисление и приписываете ему протокол CaseIterable, Swift автоматически добавляет статическое свойство allCases, содержащее массив всех возможных значений перечисления.
//let allWeekdays = Weekday.allCases - вместо [monday, tuesday, wednesday, thursday, friday, saturday, sunday]
enum FoodCategory: String, CaseIterable {
    case fruits, vedgetables, meats
}

enum Fruits: String, CaseIterable {
    case apple, banana, orange
}


struct NavigationSplitViewUI_Previews: PreviewProvider {
    static var previews: some View {
        NavigationSplitViewUI()
    }
}
