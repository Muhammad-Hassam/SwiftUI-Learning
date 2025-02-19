import SwiftUI

struct ContextMenuBootcamp: View {
    
    
    @State var backgoundColor: Color = Color.green
    
    var body: some View {
        VStack(alignment: .leading,spacing: 10){
            Image(systemName: "house.fill")
                .font(.title)
            Text("Swiftful Thinking")
                .font(.headline)
            Text("How to use ContextMenu")
                .font(.subheadline)
        }
        .foregroundColor(.white)
        .padding()
        .background(backgoundColor.cornerRadius(30))
        .contextMenu(menuItems: {
            Button(action:{
                backgoundColor = .cyan
            }, label: {
                Label("Share post",systemImage: "flame.fill")
            })
            Button(action:{
                backgoundColor = .red
            }, label: {
                Text("Report Post")
            })
            
            Button(action:{
                backgoundColor = .blue
            }, label: {
                HStack{
                    Text("Button 3")
                    Image(systemName: "heart.fill")
                }
            })
        })
    }
}

#Preview {
    ContextMenuBootcamp()
}
