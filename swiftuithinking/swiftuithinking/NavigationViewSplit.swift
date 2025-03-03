//
//  NavigationViewSplit.swift
//  swiftuithinking
//
//  Created by Hassam Shaikh on 28/02/2025.
//

import SwiftUI

struct NavigationViewSplit: View {
    
    @State private var visibility: NavigationSplitViewVisibility = .automatic
    @State private var selectedCategory: foodCategory? = nil
    @State private var selectedFruit:fruits? = nil
    
    enum foodCategory: String, CaseIterable {
        case fruits,vegetables,meats
    }
    
    enum fruits: String, CaseIterable {
        case apple,banana,orange
    }
    
    var body: some View {
        NavigationSplitView(columnVisibility: $visibility) {
            
            List(foodCategory.allCases, id: \.rawValue,selection: $selectedCategory
            ){category in
//                Button(category.rawValue.capitalized){
//                    selectedCategory = category
//                }
                NavigationLink(category.rawValue.capitalized, value: category)
            }
            
            
//            List{
//                ForEach(foodCategory.allCases, id: \.rawValue){category in
//                    Button(category.rawValue.capitalized){
//                        selectedCategory = category
//                    }
//                }
//            }
            .navigationTitle("Categories")
        }
        content: {
            if let selectedCategory {
                Group {
                    switch selectedCategory {
                    case .fruits:
                        
                        List(fruits.allCases, id:\.rawValue,selection:$selectedFruit){ fruit in
//                                Button(fruit.rawValue.capitalized){
//                                    selectedFruit = fruit
//                            }
                            NavigationLink(fruit.rawValue.capitalized, value: fruit)
                        }
                        
//                        List{
//                            ForEach(fruits.allCases, id:\.rawValue){ fruit in
//                                Button(fruit.rawValue.capitalized){
//                                    selectedFruit = fruit
//                                }
//                                
//                            }
//                        }
                    case .vegetables:
                        EmptyView()
                    case .meats:
                        EmptyView()
                    }
                }
                .navigationTitle(selectedCategory.rawValue.capitalized)
            }
            else {
                Text("Select a category to begin")
            }
        }
        detail: {
            if let selectedFruit {
                Text("You Selected: \(selectedFruit.rawValue)")
                    .font(.largeTitle)
                    .navigationTitle(selectedFruit.rawValue.capitalized)
            }
        }
        .navigationSplitViewStyle(.balanced)
    }
}

#Preview {
    NavigationViewSplit()
}
