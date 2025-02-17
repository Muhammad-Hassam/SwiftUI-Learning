import SwiftUI

struct ImageBootcampView: View {
    var body: some View {
        Image("Banner")
            .resizable()
//            .scaledToFill()
            .renderingMode(.template)
            .aspectRatio( contentMode: .fit)
            .foregroundColor(.red)
            .frame(width: 300,height: 200,alignment: .center)
            .clipped()
            .cornerRadius(10)
//            .clipShape(Ellipse())
            .clipShape(Circle())
    }
}

#Preview {
    ImageBootcampView()
}
 
