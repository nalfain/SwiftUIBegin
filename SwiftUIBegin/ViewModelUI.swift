//
//  ViewModelUI.swift
//  SwiftUIBegin
//
//  Created by MP on 29.03.2024.
//

import SwiftUI

// Модель данных
struct FruitModel: Identifiable { //Идентифицируемая
    let id: String = UUID().uuidString
    let name: String
    let count: Int
}

//Методы взаимодействия с данными (логика)
class FruitViewModel: ObservableObject { //Наблюдаемый объект
    //@State перед var используется только во View!!!!! Здесь используем @Published
    @Published var fruitArray: [FruitModel] = []
    @Published var isLoading: Bool = false
    

    init() {
        getFruits()
    }
    
    func getFruits () {
        let fruit0 = FruitModel(name: "Apples", count: 5)
        let fruit1 = FruitModel(name: "Oranges", count: 1)
        let fruit2 = FruitModel(name: "Bananas", count: 2)
        let fruit3 = FruitModel(name: "Watermelones", count: 88)
        
        isLoading = true
        DispatchQueue.main.asyncAfter(deadline: .now() + 3) {
            self.fruitArray.append(fruit0)
            self.fruitArray.append(fruit1)
            self.fruitArray.append(fruit2)
            self.fruitArray.append(fruit3)
            //fruitArray.append(contentsOf: [fruit1,fruit2,fruit3]) //Можно добавить одной строкой
            self.isLoading = false
        }
    }
    
    func deleteFruits (index:IndexSet) {
        fruitArray.remove(atOffsets: index)
    }
    
}

// Вид на экране View
struct ViewModelUI: View {
    
    //@State var fruitArray: [FruitModel] = []
    //@ObservedObject - наблюдаемый объект -> USE THIS ON SUBVIEWS (Example Second screen subview below)
    //@StateObject - состояние объекта -> USE THIS ON CREATION / INIT
    //@ObservedObject var fruitViewModel: FruitViewModel = FruitViewModel()
    @StateObject var fruitViewModel: FruitViewModel = FruitViewModel()
    var body: some View {
        NavigationStack {
            List {
                if fruitViewModel.isLoading {
                    ProgressView()
                }
                else {
                    //ForEach(fruitArray) { fruit in
                    ForEach(fruitViewModel.fruitArray) { fruit in
                        HStack {
                            Text("\(fruit.count)")
                                .foregroundColor(.red)
                            Text(fruit.name)
                                .font(.headline)
                                .bold()
                        }
                    }
                    .onDelete(perform: fruitViewModel.deleteFruits)
                }
            }
            .listStyle(.grouped)
            .navigationTitle("Fruit List")
            .toolbar(content: {
                ToolbarItem {
                    NavigationLink {
                        RandomScreen(fruitViewModel: fruitViewModel)
                    } label: {
                        Image(systemName: "arrow.right")
                            .font(.title)
                    }
                }
            })
//            Это вызывается каждый раз когда обновляется экран. Поэтому нам надо вызвать его только один раз. добавим в класс иницицилизатор и закоментируем .onAppear
//            init() {
//                getFruits()
//            }
//            .onAppear {
//                fruitViewModel.getFruits()
//            }
        }
    }
}

struct RandomScreen: View {
    //что бы получить доступ к viewModel на этом экране нам нужно использовать @ObservedObject!
    @ObservedObject var fruitViewModel: FruitViewModel
    //@StateObject var fruitViewModel: FruitViewModel
    @Environment(\.presentationMode) var presentationMode
    var body: some View {
        ZStack {
            Color.green.ignoresSafeArea()
            VStack {
                Button {
                    presentationMode.wrappedValue.dismiss()
                } label: {
                    Text("Go Back")
                        .foregroundColor(.white)
                        .font(.largeTitle)
                        .fontWeight(.semibold)
                }
                ForEach(fruitViewModel.fruitArray) { fruit in
                    Text(fruit.name)
                        .foregroundColor(.white)
                        .font(.headline)
                }
            }
        }
    }
}

//Preview
struct ViewModelUI_Previews: PreviewProvider {
    static var previews: some View {
        ViewModelUI()
        //RandomScreen()
    }
}
