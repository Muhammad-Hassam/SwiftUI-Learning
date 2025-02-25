//
//  OnboardingView.swift
//  swiftuithinking
//
//  Created by Hassam Shaikh on 25/02/2025.
//

import SwiftUI

//Mark Functions
extension OnboardingView {
    
    func handleNextPressed() {
        switch onboardingstate {
        case 1:
            guard name.count >= 3 else {
                showAlert(title: "Your name must be 3 characters long! 🫵🏻")
                return
            }
        case 3:
            guard gender.count >= 3 else {
                showAlert(title: "Select a gender before moving forward! 🫵🏻")
                return
            }
        default:
            break
        }
        withAnimation(.spring()){
            if(onboardingstate == 3){
               signIn()
            }
            else{
                onboardingstate += 1
            }
        }
    }
    
    func signIn(){
        currentUserName = name
        currentUserAge = Int(age)
        currentUserGender = gender
        
        withAnimation(.spring()){
            currentUserSignedIn = true
        }
    }
    
    func showAlert(title:String){
        alertTitle = title
        showAlert.toggle()
    }
}

//Mark Component
extension OnboardingView {
    private var bottomButton:some View {
        Text(onboardingstate == 0 ? "Sign in":onboardingstate == 3 ?
             "Finish" : "Next")
            .font(.headline)
            .foregroundColor(.red)
            .frame(height: 55)
            .frame(maxWidth: .infinity)
            .background(Color.white)
            .cornerRadius(10)
            .onTapGesture {
                handleNextPressed()
            }
            .padding(.horizontal,40)
            .padding(.bottom,40)
    }
    
    private var welcomeSection:some View {
        VStack(spacing: 40){
            Image(systemName: "heart.text.square.fill")
                .resizable()
                .scaledToFit()
                .frame(width: 200,height: 200)
                .foregroundColor(.white)
            Text("Find your match".uppercased())
                .font(.largeTitle)
                .fontWeight(.semibold)
                .foregroundColor(.white)
                .overlay(Capsule(style: .continuous)
                    .frame(height: 3)
                    .offset(y:5)
                    .foregroundColor(.white),
                         alignment: .bottom
                )
            Text("This is the app to find your match Online")
                .font(.headline)
                .italic()
                .fontWeight(.semibold)
                .foregroundColor(.white)
        }
        
    }
    
    private var addNameSection:some View {
        VStack(spacing: 40){
            Text("What's your name".uppercased())
                .font(.largeTitle)
                .fontWeight(.semibold)
                .foregroundColor(.white)
                .overlay(Capsule(style: .continuous)
                    .frame(height: 3)
                    .offset(y:5)
                    .foregroundColor(.white),
                         alignment: .bottom
                )
            TextField("Your Name Here...", text: $name)
                .font(.headline)
                .padding(.horizontal)
                .frame(height: 55)
                .background(.white)
                .cornerRadius(10)
        }
        .padding(.horizontal)
        
    }
    
    private var addAgeSection:some View {
        VStack(spacing: 40){
            Text("What's Your Age".uppercased())
                .font(.largeTitle)
                .fontWeight(.semibold)
                .foregroundColor(.white)
                .overlay(Capsule(style: .continuous)
                    .frame(height: 3)
                    .offset(y:5)
                    .foregroundColor(.white),
                         alignment: .bottom
                )
            Text("\(String(format:"%.0f",age))".uppercased())
                .font(.largeTitle)
                .fontWeight(.semibold)
                .foregroundColor(.white)
            Slider(value: $age, in:18...80, step: 1)
                .accentColor(.white)
        }
        .padding(.horizontal)
        
    }
    
    private var addGenderSection:some View {
        VStack(spacing: 40){
            Text("What's Your Gender".uppercased())
                .font(.largeTitle)
                .fontWeight(.semibold)
                .foregroundColor(.white)
                .overlay(Capsule(style: .continuous)
                    .frame(height: 3)
                    .offset(y:5)
                    .foregroundColor(.white),
                         alignment: .bottom
                )
            Picker(
                selection: $gender,
                label: Text("Select A Gender")
                    .font(.headline)
                    .frame(height: 55),
                content: {
                    Text("Select A Gender").tag(nil as String?)
                    Text("Male").tag("male")
                    Text("Female").tag("female")
                }
            )
            .pickerStyle(.menu)
            .frame(maxWidth: .infinity)
            .accentColor(.red)
            .background(.white)
            .cornerRadius(10)
        }
        .padding(.horizontal)
    }
    
}

struct OnboardingView: View {
    
    @State var onboardingstate: Int = 0
    @State var name: String = ""
    @State var age: Double = 18
    @State var gender: String = "male"
    @State var alertTitle: String = ""
    @State var showAlert: Bool = false
    
    @AppStorage("signed_in") var currentUserSignedIn: Bool = false
    @AppStorage("name") var currentUserName:String?
    @AppStorage("age") var currentUserAge:Int?
    @AppStorage("gender") var currentUserGender:String?
    
    let transition: AnyTransition = .asymmetric(insertion: .move(edge: .trailing), removal: .move(edge: .leading))
    
    var body: some View {
        ZStack {
            ZStack{
                switch onboardingstate {
                case 0:
                    welcomeSection
                        .transition(transition)
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
                    RoundedRectangle(cornerRadius: 25.0)
                        .foregroundColor(.red)
                }
            }
            VStack{
                Spacer()
                bottomButton
            }
        }
        .background(Color.red)
            .ignoresSafeArea()
        
            .alert(isPresented: $showAlert, content: {
                return Alert(title:Text(alertTitle))
            })
    }
    
}

#Preview {
    OnboardingView()
}
