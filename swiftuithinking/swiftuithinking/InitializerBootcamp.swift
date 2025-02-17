//
//  InitializerBootcamp.swift
//  swiftuithinking
//
//  Created by Hassam Shaikh on 13/02/2025.
//

import SwiftUI

struct InitializerBootcamp: View {
    
//    let bgColor:Color=Color.blue
    
    let bgColor:Color
    let count:Int
    let title:String
    
    init(bgColor: Color, count: Int, title: String) {
        self.bgColor = bgColor
        self.count = count
        self.title = title
        
//        if fruit == .apple{
//            self.title = "Apples"
//            self.bgColor = .red
//        }
//        else{
//            self.title = "Orange"
//            self.bgColor = .orange
//        }
    }
    
//    enum Fruit{
//        case apple
//        case orange
//    }
    
//    init( count: Int, title: String) {
//  
//        self.count = count
//        self.title = title
//        
//        if title=="Apples"{
//            self.bgColor = .red
//        }
//        else{
//            self.bgColor = .orange
//        }
//        
//    }
    var body: some View {
        VStack(spacing:12){
            Text("\(count)")
                .font(.largeTitle)
                .fontWeight(.bold)
                .foregroundColor(.white)
                .underline()
            Text("\(title)")
                .font(.headline)
                .fontWeight(.bold)
        }
        .frame(width: 100,height: 100)
        .padding(.all,5)
        .background(bgColor)
        .cornerRadius(10)
    }
}

#Preview {
    HStack{
        InitializerBootcamp(bgColor: Color.red,count: 55,title: "Peaches")
        InitializerBootcamp(bgColor: Color.orange,count: 55,title: "Peaches")
    }
}
