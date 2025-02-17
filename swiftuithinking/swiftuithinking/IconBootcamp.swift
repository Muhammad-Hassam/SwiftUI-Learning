import SwiftUI

struct IconBootcampView: View {
    var body: some View {
//        Image(systemName: "paperplane.fill")
//            .resizable()
////            .scaledToFill()
//            .scaledToFit()
//            .foregroundColor(.red)
//            .font(.system(size: 220))
//            .frame(width: 200,height: 200)
//            .clipped()
        
        
        Image(systemName: "person.fill.badge.plus")
            .renderingMode(.original)
            .resizable()
//            .scaledToFill()
            .scaledToFit()
            .foregroundColor(.red)
            .font(.system(size: 220))
            .frame(width: 200,height: 200)
            .clipped()
    }
}

#Preview {
    IconBootcampView()
}
