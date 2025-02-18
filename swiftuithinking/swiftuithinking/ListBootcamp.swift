import SwiftUI

struct ListBootcamp: View {
    
    @State var fruits :[String]=["apple","banana","peach","mango"]
    
    @State var veggies :[String]=["tomato","potato","carrot"]
    
    func delete(IndexSet:IndexSet){
        fruits.remove(atOffsets: IndexSet)
    }
    func move(indices: IndexSet , newOffset: Int){
            fruits.move(fromOffsets: indices, toOffset: newOffset)
    }
    func add(){
        fruits.append("Coconut")
    }
    var addButton: some View {
        Button("Add",action: {
           add()
       })
    }

    var body: some View {
        NavigationView {
            List {
                Section(
                    
                    header:
                        HStack{
                            Text("Fruits")
                            Image(systemName: "flame.fill")
                        }
                        .font(.headline)
                        .foregroundColor(.orange)
                    ){
                        ForEach(fruits,id: \.self){fruit in
                            Text(fruit.capitalized)
                                .font(.caption)
                                .foregroundColor(.white)
                                .padding(.vertical)
                        }
                        .onDelete(perform: delete)
                        .onMove(perform:move)
                        .listRowBackground(Color.blue)
                    }
                Section(
                    header:Text("Veggies"),
                    content: {
                        ForEach(veggies,id: \.self){fruit in
                            Text(fruit.capitalized)
                        }
                        .onDelete(perform: delete)
                        .onMove(perform:move)
                    })
            }
            .listStyle(SidebarListStyle())
            .navigationTitle("Grocery List")
            .navigationBarItems(leading: EditButton(), trailing:addButton)
        }
        .accentColor(.red)
    }
    
}

#Preview {
    ListBootcamp()
}
