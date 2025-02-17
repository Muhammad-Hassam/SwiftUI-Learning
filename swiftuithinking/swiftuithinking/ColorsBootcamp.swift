import SwiftUI

struct ColorsBootcampView: View {
    var body: some View {
        RoundedRectangle(cornerRadius: 10)
            .fill(
                Color("CustomColor")
//                Color.red
//                  Color(#colorLiteral(red: 1, green: 0.8323456645, blue: 0.4732058644, alpha: 0.4972837334))
//                Color(UIColor.secondarySystemBackground)
                
          
            )
            .shadow(color:Color("CustomColor").opacity(0.6),radius:10,x:6,y:10)

            .frame(width: 300,height: 200)
            .padding()
            
    }
}

#Preview {
    ColorsBootcampView()
}
