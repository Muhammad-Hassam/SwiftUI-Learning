import SwiftUI

struct TernaryBootcamp: View {
    @State var isStartingState:Bool=false
    var body: some View {
        VStack{
            Button("Button : \(isStartingState.description)"){
                isStartingState.toggle()
            }
            Text(isStartingState ? "Starting" : "Ending" )
            RoundedRectangle(cornerRadius: isStartingState ? 10 : 0)
                .fill(isStartingState ? Color.red : Color.green)
                .frame(width: 100,height: 100)
            Spacer()
        }
    }
}

#Preview {
    TernaryBootcamp()
}
