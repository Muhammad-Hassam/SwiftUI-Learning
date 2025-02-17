import SwiftUI

struct FramesBootcampView: View {
    var body: some View {
        Text("Hello World!")
        
            .background(Color.green)
//            .frame(width: 300,height: 300,alignment: .center)
            .frame(maxWidth:.infinity,maxHeight: .infinity)
            .background(Color.red)
    }
}

#Preview {
    FramesBootcampView()
}
