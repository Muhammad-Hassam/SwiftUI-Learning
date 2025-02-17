import SwiftUI

struct StackBootcamp: View {
    var body: some View {
//        HStack{
//            Rectangle()
//                .fill(Color.red)
//                .frame(width: 100,height: 100)
//            Rectangle()
//                .fill(Color.red)
//                .frame(width: 100,height: 100)
//            Rectangle()
//                .fill(Color.red)
//                .frame(width: 100,height: 100)
//        }
//        VStack{
//            Rectangle()
//                .fill(Color.red)
//                .frame(width: 100,height: 100)
//            Rectangle()
//                .fill(Color.red)
//                .frame(width: 100,height: 100)
//            Rectangle()
//                .fill(Color.red)
//                .frame(width: 100,height: 100)
//        }
//        ZStack{
//            Rectangle()
//                .fill(Color.red)
//                .frame(width: 200,height: 200)
//            Rectangle()
//                .fill(Color.blue)
//                .frame(width: 150,height: 150)
//            Rectangle()
//                .fill(Color.green)
//                .frame(width: 100,height: 100)
//        }
        
        ZStack(alignment: .top){
            Rectangle()
                .fill(Color.yellow)
                .frame(width: 350,height: 500,alignment: .center)
            VStack(spacing:30){
                Rectangle()
                    .fill(Color.green)
                    .frame(width: 100,height: 100)
                Rectangle()
                    .fill(Color.red)
                    .frame(width: 100,height: 100)
                HStack{
                    Rectangle()
                        .fill(Color.green)
                        .frame(width: 100,height: 100)
                    Rectangle()
                        .fill(Color.red)
                        .frame(width: 100,height: 100)
                }
            }
            .padding()
            .background(Color.gray)
            
        }
    }
}

#Preview {
    StackBootcamp()
}
