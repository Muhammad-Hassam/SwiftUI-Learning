//
//  EnvironmentObjectBootcamp.swift
//  swiftuithinking
//
//  Created by Hassam Shaikh on 25/02/2025.
//

import SwiftUI


class EnvironmentViewModel: ObservableObject {
    @Published var dataArray:[String] = []
    
    init(){
        getData()
    }
    
    func getData(){
        self.dataArray.append(contentsOf: ["Ipad","Iphone","IMac","Apple Watch"])
    }
}

struct EnvironmentObjectBootcamp: View {
    
    @StateObject var viewModel: EnvironmentViewModel = EnvironmentViewModel()
    
    var body: some View {
        NavigationView{
            List {
                ForEach(viewModel.dataArray,id: \.self) {item in
                    NavigationLink(destination: DetailView(selectedItems: item),
                                   label:{
                        Text(item)
                    })
                }
            }
            .navigationTitle("IOS Devices")
        }
        .environmentObject(viewModel)
    }
}

struct DetailView: View{
    
    let selectedItems: String
    
    var body: some View{
        ZStack {
            Color.orange.ignoresSafeArea()
            NavigationLink(destination: FinalView(),
                           label:{
                Text(selectedItems)
                    .font(.headline)
                    .foregroundColor(.orange)
                    .padding()
                    .padding(.horizontal)
                    .background(Color.white)
                    .cornerRadius(30)

            })
        }
    }
}

struct FinalView: View {
    
    @EnvironmentObject var viewModel : EnvironmentViewModel
    
    var body: some View {
        ZStack {
            
            LinearGradient(
                gradient: Gradient(colors: [Color.gray,Color.blue]), startPoint: .topLeading, endPoint: .bottomTrailing
            ).ignoresSafeArea()
            List {
                ForEach(viewModel.dataArray,id: \.self) {item in
                    NavigationLink(destination: DetailView(selectedItems: item),
                                   label:{
                        Text(item)
                    })
                }
            }
        }
    }
}

#Preview {
    EnvironmentObjectBootcamp()
//    DetailView(selectedItems: "ihone")
}
