//
//  ListSwipActionsBootcamp.swift
//  swiftuithinking
//
//  Created by Hassam Shaikh on 26/02/2025.
//

import SwiftUI

struct ListSwipActionsBootcamp: View {
    
    @State var fruits: [String] = [
        "apple", "orange", "banana", "peach"
    ]
    
    func delete(IndexSet: IndexSet){
        
    }
    var body: some View {
        List{
            ForEach(fruits, id: \.self ){fruit in
                Text(fruit.capitalized)
                    .swipeActions(edge: .trailing, allowsFullSwipe: true){
                        Button("Archive"){
                            
                        }
                        .tint(.green)
                        Button("Save"){
                            
                        }
                        .tint(.blue)
                        Button("Junk"){
                            
                        }
                        .tint(.black)
                    }
                    .swipeActions(edge: .leading, allowsFullSwipe: false){
                        Button("Share"){
                            
                        }
                        .tint(.yellow)
                    }
            }
//            .onDelete(perform: delete)
        }
    }
}

#Preview {
    ListSwipActionsBootcamp()
}
