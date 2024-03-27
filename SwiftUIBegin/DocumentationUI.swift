//
//  DocumentationUI.swift
//  SwiftUIBegin
//
//  Created by MP on 25.03.2024.
//

import SwiftUI

struct DocumentationUI: View {
    
    //MARK: PROPERTIES
    
    @State var data: [String] = [
        "Apples", "Oranges", "Bananas"
    ]
    
    //MARK: BODY
    //Имя того кто внес - Обычный коментарий или заголовок к коментарию который можно свернуть:
    /*
     Можнно писать много много слов и это сворачивается с помощью OPTION+CMD+LEFT ARROW и разворачивается OPTION+CMD+RIGHT ARROW.
     Строка 1
     Строка 2
     Строка 3
     Строка 4
     ...
     */
    
    @State var showAlert: Bool = false
    
    var body: some View {
        NavigationStack{ // START: NAV Метка начала Но лучше выносить код в отдельние функции и вью. НО так люди пишут поэтому такое можно встретить.
            ZStack {
                // background - рекомендуется отделять слои.
                Color.red.ignoresSafeArea()
                
                // foreground
                foregroundLayer
                .navigationTitle("Documintation")
                .toolbar {
                    ToolbarItem {
                        Button("ALERT") {
                            showAlert.toggle()
                        }
                    }
                }
                .alert(isPresented: $showAlert) {
                    getAlert(text: "This is a alert!")
            }
            }
        } // END: NAV Метка конца.
    }
    /// This is foreground layer wich holds a scrollview (Это добавляет текст саммари в sjow qick help правой кнопкой на foregroundLayer
    var foregroundLayer: some View {
        ScrollView{ // START: SCROLLV
            Text("Hellow")
            ForEach(data, id: \.self) { name in
                Text(name)
                    .font(.headline)
            }
        } // END: SCROLLV
    }

    //MARK: FUNCTION
    // Для того что бы заполнить документацию для функции надо поставить курсор на функцию нажать cmd и кликнуть мышкой выбрав в меню add documentation
    /// Description Это добавляет текст саммари в sjow qick help правой кнопкой на foregroundLayer.
    ///  Gets an  allert with a specifited title
    ///
    ///Добавляет раздел дискусия This function creates and return alert immediately  (детальное описание функции)
    ///
    ///Начало примера кода
    ///```
    ///getAlert (Text: "Hi") -> Alert(title: Text("Hi"))
    ///```
    ///Конец примера кода (`-тамже где и  ~)
    ///
    /// - Warning: There no additional message in this allert
    /// - Parameter text: text description (описание параметра текст) This is a title of alert
    /// - Returns: description (что функция возвращает) Returns alert with title
    ///
    func getAlert (text: String) -> Alert {
        return Alert(title: Text(text))
    }
}

    //MARK: PREVIEWS
struct DocumentationUI_Previews: PreviewProvider {
    static var previews: some View {
        DocumentationUI()
    }
}
