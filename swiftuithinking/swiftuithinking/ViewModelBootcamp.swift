//
//  ViewModelBootcamp.swift
//  swiftuithinking
//
//  Created by Hassam Shaikh on 24/02/2025.
//

import SwiftUI

struct FruitModel: Identifiable {
    let id: String = UUID().uuidString
    let name: String
    let count: Int
}

class FruitViewModel:ObservableObject {
    
    @Published var fruitArray: [FruitModel] = []
    @Published var isLoading: Bool = false
    
    init() {
        getFruits()
    }
    
    func getFruits(){
        let fruit1 = FruitModel(name: "Orange", count: 1)
        let fruit2 = FruitModel(name: "Banana", count: 2)
        let fruit3 = FruitModel(name: "Mango", count: 4)
        
        isLoading = true
        
        DispatchQueue.main.asyncAfter(deadline: .now() + 3.0) {
            self.fruitArray.append(fruit1)
            self.fruitArray.append(fruit2)
            self.fruitArray.append(fruit3)
            self.isLoading = false
        }
        
  
    }
    
    func deleteFruit(index:IndexSet){
        fruitArray.remove(atOffsets: index)
    }
    
}

struct ViewModelBootcamp: View {
    

    // @ObservedObject -> Use this for subviews
//    @ObservedObject var fruitViewModel: FruitViewModel = FruitViewModel()
    
    // @StateObject  -> Use this on Creation / Init
    @StateObject var fruitViewModel: FruitViewModel = FruitViewModel()
    
    var body: some View {
        NavigationView {
            List {
                
                if fruitViewModel.isLoading {
                    ProgressView()
                } else{
                    ForEach(fruitViewModel.fruitArray){ fruit in
                        HStack {
                            Text("\(fruit.count)")
                                .foregroundColor(.gray)
                                .font(.caption)
                            Text("\(fruit.name)")
                                .bold()
                        }
                        
                    }
                    .onDelete(perform: fruitViewModel.deleteFruit)
                }
                    
            }
            .listStyle(GroupedListStyle())
            .navigationTitle("Fruit List")
            .navigationBarItems(
                trailing:NavigationLink(
                    destination: RandomScreen(fruitViewModel:fruitViewModel),
                    label: {
                    Image(systemName: "arrow.right")
                        .font(.title)
                }
            ))
//            .onAppear{
//                fruitViewModel.getFruits()
//            }

        }
    }
}

struct RandomScreen: View {
    
    @Environment(\.presentationMode) var presentationMode
    @ObservedObject var fruitViewModel: FruitViewModel
    
    var body: some View{
        ZStack {
            Color.green.ignoresSafeArea()
            VStack{
                ForEach(fruitViewModel.fruitArray){ fruit in
                    Text(fruit.name)
                        .foregroundColor(.white)
                        .font(.headline)
                    
                }
            }

        }
    }
}

#Preview {
    ViewModelBootcamp()
//    RandomScreen()
}
