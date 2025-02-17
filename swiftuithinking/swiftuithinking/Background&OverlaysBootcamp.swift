import SwiftUI

struct BackgroundAndOverlaysBootcamp: View {
    var body: some View {
//        Text("Hello World!")
//            .frame(width: 100,height: 100, alignment: .center)
//            .background(
//                Circle()
//                    .fill(Color.blue)
//            )
//            .frame(width: 120,height: 120, alignment: .center)
//            .background(
//                Circle()
//                    .fill(Color.red)
//            )
//        Circle()
//            .fill(
//                Color.pink
//            )
//            .frame(width:100, height: 100)
//            .overlay(
//                Text("H")
//                    .font(.largeTitle)
//                   
//            )
//            .background(
//                Circle()
//                    .fill(Color.purple)
//                    .frame(width:120, height: 120)
//            )
        
//        Rectangle()
//            .frame(width: 100,height: 100)
//            .overlay(
//                Rectangle()
//                .fill(Color.blue)
//                .frame(width:50,height:50),
//                alignment:.center)
//            .background(Rectangle().fill(Color.red)
//                .frame(width: 150,height: 150),alignment: .center)
        
        
        Image(systemName: "heart.fill")
            .font(.system(size:40))
            .foregroundColor(Color.white)
            .background(
                Circle()
                    .fill(
                        LinearGradient(colors: [Color.red,Color.green], startPoint: .topLeading, endPoint:.bottomTrailing)
                    )
                    .frame(width: 100,height: 100)
                    .shadow(color: Color("CustomColor"), radius: 10, x:0.0,y:5)
                    .overlay(
                        Circle()
                            .fill(Color.blue)
                            .frame(width: 35,height: 35)
                            .overlay(
                                Text("5")
                                    .font(.title)
                                .foregroundColor(Color.white)
                                ,alignment: .center
                                 )
                            .shadow(color: Color(Color.red), radius: 10, x:0.0,y:5)
                        ,alignment: .bottomTrailing
                        
                    )
            )
        
    }
}

#Preview {
    BackgroundAndOverlaysBootcamp()
}

