import SwiftUI

struct ShapesBootcampView: View {
    var body: some View {
        Circle()
        //            .fill(Color.green)
        //            .foregroundColor(.blue)
        //            .stroke(.red)
//                    .stroke(Color.red, lineWidth: 10)
//            .stroke(Color.gray, style:StrokeStyle(lineWidth: 10,lineCap: .square,dash: [60]))
//            .trim(from:0.5,to:1.0)
        
//        
        Ellipse()
            .padding()
//            .frame(width: 200,height: 150)
        //            .fill(Color.green)
        //            .foregroundColor(.blue)
        //            .stroke(.red)
//                    .stroke(Color.red, lineWidth: 10)
//            .stroke(Color.gray, style:StrokeStyle(lineWidth: 10,lineCap: .square,dash: [60]))
//            .trim(from:0.5,to:1.0)
        
        Capsule(style: .circular)
            .padding()
        //            .fill(Color.green)
        //            .foregroundColor(.blue)
        //            .stroke(.red)
//                    .stroke(Color.red, lineWidth: 10)
//            .stroke(Color.gray, style:StrokeStyle(lineWidth: 10,lineCap: .square,dash: [60]))
//            .trim(from:0.5,to:1.0)
        
        
        RoundedRectangle(cornerRadius: 10)
            .padding()
        //            .fill(Color.green)
        //            .foregroundColor(.blue)
        //            .stroke(.red)
//                    .stroke(Color.red, lineWidth: 10)
//            .stroke(Color.gray, style:StrokeStyle(lineWidth: 10,lineCap: .square,dash: [60]))
//            .trim(from:0.5,to:1.0)
    }
}

#Preview {
    ShapesBootcampView()
}
