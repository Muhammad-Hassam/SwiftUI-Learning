import SwiftUI

struct ContentView: View {
    var body: some View {
//        VStack {
//            Text("Knock, Knock")
//                .padding()
//                .background(Color.gray,in: RoundedRectangle(cornerRadius: 8))
//            Text("Knock, Knock")
//                .padding()
//                .cornerRadius(10)
//                .overlay(
//                    RoundedRectangle(cornerRadius: 8)
//                        .stroke(Color.teal, lineWidth: 2)
//                )
//                .padding()
//        }
        HStack{
            DayForeCast(day:"Mon",isRainy: false, high: 70,low:40)
            DayForeCast(day:"Tues",isRainy: true, high: 60,low:30)
            DayForeCast(day:"Wed",isRainy: false, high: 50,low:40)
        }.background(Color.green,in:RoundedRectangle(cornerRadius: 8))
    }
}
#Preview {
    ContentView()
}

struct DayForeCast: View {
    let day:String
    let isRainy:Bool
    let high:Int
    let low:Int
    
    var iconName: String {
        if isRainy {
            return "cloud.rain.fill"
        }
        else {
            return "sun.max.fill"
        }
    }
    
    var body: some View {
        VStack{
            Text(day).font(Font.title).fontWeight(.bold).fontDesign(.monospaced)
            Image(systemName:iconName).foregroundStyle(Color.yellow).font(Font.largeTitle)
            Text("high: \(high)°C").font(Font.headline)
            Text("Low: \(low)°C").font(Font.headline).foregroundStyle(.secondary)
        }.padding()
    }
}
