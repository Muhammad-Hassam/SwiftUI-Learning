import SwiftUI

struct StatesBootcamp: View {
    
    @State var backgroundColor:Color=Color.red
    @State var myTitle:String="My Title"
    @State var count:Int = 0
    var body: some View {
        
        ZStack{
            backgroundColor.edgesIgnoringSafeArea(.all)
            VStack(spacing:20){
                Text(myTitle).font(.title)
                Text("Count : \(count)").font(.headline).underline()
                HStack(spacing:20){
                    Button("Button 1"){
                       backgroundColor=Color.green
                        myTitle="Button 1 was pressed"
                        count += 1
                }
                    Button("Button 2"){
                       backgroundColor=Color.yellow
                        myTitle="Button 2 was pressed"
                        count -= 1
            }
        }
    }
        }.foregroundColor(.white)
    }
}

#Preview {
    StatesBootcamp()
}
