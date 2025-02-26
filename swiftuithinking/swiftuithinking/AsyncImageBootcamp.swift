//
//  AsyncImageBootcamp.swift
//  swiftuithinking
//
//  Created by Hassam Shaikh on 26/02/2025.
//

import SwiftUI

struct AsyncImageBootcamp: View {
    
    let url = URL(string: "https://picsum.photos/400")
    var body: some View {
        
//        AsyncImage(url: url)
        
//        AsyncImage(url: url, content: { returnedImage in
//            returnedImage
//                .resizable()
//                .scaledToFit()
//                .frame(width: 300, height: 300)
//                .cornerRadius(10)
//        }, placeholder:
//                    {
//            ProgressView()
//        })
        
        AsyncImage(url: url){phase in
            switch phase {
            case .empty:
                ProgressView()
            case .success(let returnedImage):
                returnedImage
                    .resizable()
                    .scaledToFit()
                    .frame(width: 100, height: 100)
                    .cornerRadius(10)
            case .failure(let error):
                Image(systemName: "questionMark")
                    .font(.headline)
             default:
                Image(systemName: "questionMark")
                    .font(.headline)
            }
            
        }
        
    }
}

#Preview {
    AsyncImageBootcamp()
}
