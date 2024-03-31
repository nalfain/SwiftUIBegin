//
//  EnvironmentObjectUI.swift
//  SwiftUIBegin
//
//  Created by MP on 30.03.2024.
//

import SwiftUI

class EnvironmentViewModel: ObservableObject {
    @Published var dataArray: [String] = []
    
    init () {
        getData()
    }
    
    func getData () {
        dataArray.append("Ipad")
        dataArray.append("Iphone")
        dataArray.append(contentsOf: ["Imac","Apple Watch"])
    }
}


struct EnvironmentObjectUI: View {
//    @StateObject - состояние объекта (Когда первый раз иницилизируем или не хотим что бы его состояние менялось далее.)
//    @ObservedObject - наблюдаемый обьект (Кода используем в других View с отслеживанием состояния)
//    @EnvironmentObject - объект окружения. Хорошей практикой является использование не более 2 моделей и стоит использовать это только в длинных экранах.

    @StateObject var viewModel: EnvironmentViewModel = EnvironmentViewModel()
    
    var body: some View {
        NavigationStack {
            List {
                ForEach(viewModel.dataArray, id: \.self) { item in
                    NavigationLink {
                        DetailView(selectedItem: item)
                    } label: {
                        Text(item)
                    }

//                    NavigationLink(destination: DetailView(viewModel: viewModel, selectedItem: item)) {
//                        viewModel из @StateObject var viewModel: EnvironmentViewModel = EnvironmentViewModel()
//                        Text(item)
//                    }
                }
            }
            .navigationTitle("IOS Devices")
        }
        .environmentObject(viewModel) //Поэтому существует .environmentObject(viewModel) Мы ее задаем в главном View и она сама сообщает дальнейшем представлениям об этой модели.
    }
}

struct DetailView: View {
    
    //@ObservedObject var viewModel: EnvironmentViewModel
    
    let selectedItem: String
    
    var body: some View {
        ZStack{
            //Background
            Color.orange.ignoresSafeArea()
            //Foreground - слой переднего плана
            NavigationLink {
                FinalView() //когда мы используем @EnvironmentObject нет необходимости передавать модель как в коментарии ниже.
                //FinalView(viewModel: viewModel) //из @ObservedObject var viewModel: EnvironmentViewModel
            } label: {
                Text(selectedItem)
                    .font(.headline)
                    .foregroundColor(.orange)
                    .padding()
                    .padding(.horizontal)
                    .background(.white)
                    .cornerRadius(30)
            }
        }
    }
}

struct FinalView: View {
    //Таким образом мы протащили viewModel через 3 экрана, хотя на 2 экране ей даже не пользовались.
    //Поэтому существует .environmentObject(viewModel) Мы ее задаем в главном View структуры (EnvironmentObjectUI) и она сама сообщает дальнейшем представлениям об этой модели. А в структуре где мы хотим использовать модель мы используем @EnvironmentObject var viewModel: EnvironmentViewModel
    
    //@ObservedObject var viewModel: EnvironmentViewModel
    @EnvironmentObject var viewModel: EnvironmentViewModel
    
    var body: some View {
        ZStack{
            //Backgroung
            LinearGradient(colors: [Color(#colorLiteral(red: 0.2196078449, green: 0.007843137719, blue: 0.8549019694, alpha: 1)),Color(#colorLiteral(red: 0.06274510175, green: 0, blue: 0.1921568662, alpha: 1))], startPoint: .topLeading, endPoint: .bottomTrailing).ignoresSafeArea()
            
            //Foreground
            ScrollView{
                VStack(spacing: 20) {
                    ForEach(viewModel.dataArray, id: \.self) { item in
                        Text(item)
                    }
//                    Text("Item 1")
//                    Text("Item 2")
//                    Text("Item 3")
                }
                .foregroundColor(.white)
                .font(.largeTitle)
            }
        }
    }
}

struct EnvironmentObjectUI_Previews: PreviewProvider {
    static var previews: some View {
        EnvironmentObjectUI()
        //DetailView(selectedItem: "Iphone")
        //FinalView()
    }
}
