import SwiftUI

struct PickerBootcamp: View {
    
    @State var selection:String = "Most Recent"
    @State var filterOptions:[String] = ["Most Recent", "Most Popular","Most Liked"]
    
    init(){
        UISegmentedControl.appearance().selectedSegmentTintColor = UIColor.red
        let attributes: [NSAttributedString.Key:Any]=[
            .foregroundColor : UIColor.white
        ]
        UISegmentedControl.appearance().setTitleTextAttributes(attributes,for: .selected)
    }
    
    var body: some View {
        Picker(
            selection:$selection,
            label:Text("Picker"),
            content: {
                ForEach(filterOptions.indices,id:\.self ,content: { index in
                    Text(filterOptions[index]).tag(filterOptions[index])
                })
            })
        .pickerStyle(SegmentedPickerStyle())
        .background(Color.gray)
        .foregroundColor(.white)
//                    Picker(
//                        selection:$selection,
//                        label:
//                            HStack{
//                                Text("Filter: ")
//                                Text(selection)
//                            },
//                        content: {
//                            ForEach(filterOptions,id:\.self ,content: {data in
//                                HStack{
//                                    Text(data)
//                                    Image(systemName: "heart.fill")
//                                }
//                                .font(.headline)
//                                .foregroundColor(.white)
//                                .padding()
//                                .padding(.horizontal)
//                                .background(Color.blue)
//                                .cornerRadius(10)
//                                .shadow(color: .blue, radius: 10,x:0.0,y:0.0)
//                              .tag(data)
//                            })
//                        })
//                    .pickerStyle(MenuPickerStyle())
//                  
        
        
//        VStack{
//            HStack{
//                Text("Age:")
//                Text(selection)
//            }
//            Picker(
//                selection:$selection,
//                label: Text("Picker"),
//                content: {
//                    ForEach(0..<100, id:\.self){data in
//                        Text("\(data)")
//                            .foregroundColor(.red)
//                            .font(.headline)
//                            .tag("\(data)")
//                            
//                    }
//                })
//            .pickerStyle(WheelPickerStyle())
//        }
      
    }
}

#Preview {
    PickerBootcamp()
}
