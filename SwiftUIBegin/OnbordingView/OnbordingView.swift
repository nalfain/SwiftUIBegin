//
//  OnbordingView.swift
//  SwiftUIBegin
//
//  Created by MP on 01.04.2024.
//

import SwiftUI

struct OnbordingView: View {
    //Onbording states: alt+cmd+ -> or <-
    /*
     0 - welcome screen
     1 - name screen
     2 - age screen
     3 - gender screen
     */
    
    let transition: AnyTransition = .asymmetric(
        insertion: .move(edge: .trailing),
        removal: .move(edge: .leading))
    
    @State var onbordingState: Int = 0
    
    //onbording inputs
    @State var name: String = ""
    @State var age: Double = 50
    @State var gender: String = ""
    
    //for the alert
    @State var alertTitle: String = ""
    @State var showAlert: Bool = false
    
    //for appStorage
    @AppStorage("name") var currentUserName: String?
    @AppStorage("age") var currentUserAge: Int?
    @AppStorage("gender") var currentUserGender: String?
    @AppStorage("signed_in") var currentUserSignedIn: Bool = false
    
    var body: some View {
        ZStack{
            //content
            ZStack{
                switch onbordingState {
                case 0:
                    welcomeSection
                        .transition(transition) // сделали константу типа AnyTransition и применили ее
                case 1:
                    addNameSection
                        .transition(transition)
                case 2:
                    addAgeSection
                        .transition(transition)
                case 3:
                    addGenderSection
                        .transition(transition)
                default:
                    RoundedRectangle(cornerRadius: 25)
                        .foregroundColor(.green)
                }
            }
            //Buttons
            VStack{
                Spacer()
                bottomBatton
            }
            .padding()
        }
        .alert(isPresented: $showAlert) {
            return Alert(title: Text(alertTitle))
        }
    }
}

struct OnbordingView_Previews: PreviewProvider {
    static var previews: some View {
        OnbordingView()
            .background(.purple) //временный фон основной фон в другом файле
    }
}
//MARK: COMPONENTS
extension OnbordingView { //Это расширение позволяет вынести часть кода из представления (дизайна)
    
    private var bottomBatton: some View {
        Text(onbordingState == 0 ? "SIGN UP" : onbordingState == 3 ? "FINISH" : "NEXT")
            .font(.headline)
            .foregroundColor(.purple)
            .frame(height: 55)
            .frame(maxWidth: .infinity)
            .background(.white)
            .cornerRadius(10)
            //.animation(.none)
            .onTapGesture {
                //code then click
                hendleNextButtonPresset()
            }
    }
    
    private var welcomeSection: some View {
        VStack(spacing: 40) {
            Spacer()
            Image(systemName: "heart.text.square.fill")
                .resizable()
                .scaledToFit()
                .frame(width: 200, height: 200)
                .foregroundColor(.white)
            Text("Find you match.")
                .font(.largeTitle)
                .fontWeight(.semibold)
                .foregroundColor(.white)
                .overlay(
                    Capsule(style: .continuous)
                        .frame(height: 3)
                        .offset(y: 5)
                        .foregroundColor(.white)
                    , alignment: .bottom
                )
            Text("This is #1 app for finding you match online! In this turtorial we are practicing using AppStoradge and ower SfiftUI techniques.")
                .foregroundColor(.white)
                .fontWeight(.medium)
            Spacer()
            Spacer()
        }
        .multilineTextAlignment(.center) // выравнивание по центру
        .padding()
    }
    
    private var addNameSection: some View {
        VStack(spacing: 20) {
            Spacer()
            Text("What's you name?")
                .font(.largeTitle)
                .fontWeight(.semibold)
                .foregroundColor(.white)
            TextField("You name heare...", text: $name)
                .font(.headline)
                .frame(height: 55)
                .padding(.horizontal)
                .background(.white)
                .cornerRadius(10)
            Spacer()
            Spacer()
        }
        .padding()
    }
    
    //AGE VIEW
    private var addAgeSection: some View {
        VStack(spacing: 20) {
            Spacer()
            Text("What's you age?")
                .font(.largeTitle)
                .fontWeight(.semibold)
                .foregroundColor(.white)
            Text("\(String(format: "%.0f", age))")
                .font(.largeTitle)
                .fontWeight(.semibold)
                .foregroundColor(.white)
            Slider(value: $age, in: 18...100, step: 1)
                .accentColor(.white)
            Spacer()
            Spacer()
        }
        .padding()
    }
    
    //GENDER VIEW
    private var addGenderSection: some View {
        VStack(spacing: 20) {
            Spacer()
            Text("What's you gender?")
                .font(.largeTitle)
                .fontWeight(.semibold)
                .foregroundColor(.white)
            Picker(selection: $gender, label: Text("Gender")) {
                Text("Male")
                    .tag("Male")
                    .font(.title)
                    .fontWeight(.semibold)
                    .foregroundColor(.white)
                    .accentColor(.white)
                Text("Female")
                        .tag("Female")
                        .font(.title)
                        .fontWeight(.semibold)
                        .foregroundColor(.white)
                        .tag("Male")
                        .accentColor(.white)
                Text("I don't know...")
                        .tag("x")
                        .font(.title)
                        .fontWeight(.semibold)
                        .foregroundColor(.white)
                        .tag("Male")
                        .accentColor(.white)
                
            }
            .pickerStyle(.wheel)
            
            
            //.pickerStyle(.menu)
            Spacer()
            Spacer()
            Spacer()
        }
        .padding()

    }
}

//MARK: FUNCTION
extension OnbordingView {
    
    func hendleNextButtonPresset () {
        //Check inputs
        switch onbordingState {
        case 1:
            guard name.count >= 3 else { //считаем количество символов
                showAlert(title: "You name must be at list 3 characters long :)")
                return //выходим из функции и код дальше не выполняется
            }
        case 3:
            guard gender.count > 1 else {
                showAlert(title: "Please select gender before mooving forvard")
                return
            }
        default:
            break
        }
        
        //Go to next section
        if onbordingState == 3 {
            signIn()
        }
        else{
            withAnimation(.spring()) {
                onbordingState += 1
            }
        } 
    }
    
    func showAlert(title: String) {
        alertTitle = title
        showAlert.toggle()
    }
    
    
    func signIn () {
        currentUserName = name
        currentUserAge = Int(age)
        currentUserGender = gender
        withAnimation(.spring()) {
            currentUserSignedIn = true
        }
    }
}
