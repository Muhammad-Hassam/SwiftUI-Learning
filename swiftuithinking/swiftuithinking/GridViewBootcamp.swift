import SwiftUI

struct GridViewBootcamp: View {
    
    private func cell(int:Int) -> some View {
        Text("\(int)")
            .font(.title)
            .padding()
            .foregroundColor(.white)
            .background(Color.green)
            .cornerRadius(10)
    }
    
    var body: some View {
        Grid(alignment: .trailing, horizontalSpacing: 8, verticalSpacing: 50) {
            
            ForEach(0..<4) {rowindex in
                GridRow {
                    ForEach(0..<4) {colindex in
                        let cellNumber = (rowindex * 4) + (colindex + 1)
                        
                        if cellNumber == 7 {
//                            EmptyView()
                            Color.green.gridCellUnsizedAxes([.horizontal, .vertical])
                                
                        } else {
                            cell(int: cellNumber)
                                .gridCellColumns(cellNumber == 6 ? 2 : 1)
                                .gridCellAnchor(.leading)
                                .gridColumnAlignment(cellNumber == 1 ? .trailing :
                                                        cellNumber == 4 ? .leading : .center)
                        }
                        
                    }
                    
                }
                
//                GridRow {
//                    cell(int: 1)
//                    cell(int: 2)
//                    cell(int: 3)
//                }
//                //            cell(int: 33)
//                
//                Divider()
//                    .gridCellUnsizedAxes(.horizontal )
//                GridRow {
//                    cell(int: 4)
//                    cell(int: 5)
//                    cell(int: 5)
//                }
            }
        }
    }
}


#Preview {
    GridViewBootcamp()
}
