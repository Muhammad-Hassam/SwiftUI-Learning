import SwiftUI

struct ForEachBootcamp: View {
    
    let data:[String]=["Hi","Hello"]
    var body: some View {
//        VStack{
//            ForEach(0..<10){index in
//                HStack{
//                    Circle()
//                        .fill(Color.blue)
//                        .frame(width: 30,height: 30)
//                    Text("Index is: \(index)")
//                }
//            }
//        }
        
        VStack{
            ForEach(data.indices){index in
                Text("\(data[index] ) ITEM : \(index)")
            }
            ForEach(data.indices) {
              Text(data[$0])
            }
        }
    }
}

#Preview {
    ForEachBootcamp()
}
