import SwiftUI

struct TextBootcampView: View {
    var body: some View {
        Text("My first page".lowercased() )
            .underline(true, color: Color.red)
            .italic()
            .fontDesign(.monospaced)
            .font(.system(size: 24,weight: .bold))
            .foregroundColor(.red)
        //            .foregroundStyle(Color.red)
        //  .underline()
        //  .strikethrough()
        //  .strikethrough(true,color:Color.red )
        //  .font(.subheadline)
        // .fontWeight(.semibold)
        Text("Swift UI learning".capitalized)
        Text("My first page, for learning the Swift UI anf I'm enjoying it alot".uppercased())
            .multilineTextAlignment(.center)
            .padding()
            .baselineOffset(0)
            .kerning(0.5)
            .frame(width: 200,height: 200,alignment: .center)
            .minimumScaleFactor(0.1)


    }
}

#Preview {
    TextBootcampView()
}
