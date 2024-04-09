//
//  ListSwipeActionsUI.swift
//  SwiftUIBegin
//
//  Created by MP on 07.04.2024.
//

import SwiftUI

struct ListSwipeActionsUI: View {
    
    @State var fruits: [String] = [
        "apple", "orange", "Banana", "Peach"
    ]
    
    var body: some View {
     
        List {
            ForEach(fruits, id: \.self) { fruit in
                Text(fruit.capitalized)
                    //edge: .leading - добавляет к 3 кнопкам которые мы сделали внизу кнопку удалить при смахиваниии  с права на лево.
                // allowsFullSwipe: true - удобно использовать для больше чем одной кнопки.
                    .swipeActions(edge: .trailing, allowsFullSwipe: true) {
                        Button {
                            //Action code
                        } label: {
                            Text("Archive")
                        }
                        .tint(.green)
                        Button {
                            //Action code
                        } label: {
                            Text("Save")
                        }
                        .tint(.blue)
                        Button {
                            //Action code
                        } label: {
                            Text("Junk")
                        }
                        .tint(.black)

                    }
                    .swipeActions(edge: .leading, allowsFullSwipe: false) {
                        Button {
                            //Action code
                        } label: {
                            Text("Moon...")
                        }
                        .tint(.orange)
                    }
            }
            .onDelete(perform: delete)
        }
        
    }
    
    func delete (indexSet: IndexSet) {
        
    }
}

struct ListSwipeActionsUI_Previews: PreviewProvider {
    static var previews: some View {
        ListSwipeActionsUI()
    }
}
