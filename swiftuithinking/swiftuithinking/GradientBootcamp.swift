import SwiftUI

struct GradientBootcampView: View {
    var body: some View {

        RoundedRectangle(cornerRadius: 10)
            .fill(
                
                AngularGradient(
                    gradient:Gradient(colors:[Color.accentColor,Color.orange]),
                    center: .center,
                    angle: .degrees(170)
                )
              
//                RadialGradient(
//                    gradient:Gradient(colors:[Color("CustomColor"),Color.accentColor,Color.blue]),
//                    center: .center,
//                    startRadius: 50,
//                    endRadius: 100
//        )
//                )
             
        
//                LinearGradient(gradient:Gradient(colors: [Color("CustomColor"),Color.accentColor,Color.blue]), startPoint: .bottomLeading, endPoint: .topTrailing)
                
                
          )
            .frame(width: 200,height: 200)
            
         
    }
}

#Preview {
    GradientBootcampView()
}
