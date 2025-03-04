import SwiftUI

@Observable class ObservableViewModel {
     var title:String = "Some Title"
}

struct ObservableBootcamp: View {

    @State private var viewModel = ObservableViewModel()

    var body: some View {
        VStack(spacing: 40){
            Button(viewModel.title){
                viewModel.title=("New title")
            }
            SomeChildView(viewModel: viewModel)
            
            SomeThirdView()
        }
        .environment(viewModel)
    }
}

struct SomeChildView: View {
    
//    @ObservedObject var viewModel : ObservableViewModel
    @Bindable var viewModel : ObservableViewModel
    
    var body: some View{
        Button(viewModel.title){
            viewModel.title = "Click Me"
        }
    }
}

struct SomeThirdView: View {
    
//   @EnvironmentObject var viewModel : ObservableViewModel
    @Environment(ObservableViewModel.self) var viewModel
    
    var body: some View{
        Button(viewModel.title){
            viewModel.title = "Clicked Me"
        }
    }
}

#Preview {
    ObservableBootcamp()
}
