//
//  ControlGroupMenuBootcamp.swift
//  swiftuithinking
//
//  Created by Hassam Shaikh on 04/03/2025.
//

import SwiftUI

struct ControlGroupMenuBootcamp: View {
    var body: some View {
        Menu("My Menu"){
//            Button("One"){
//                
//            }
            ControlGroup {
                Button("Uno"){
                    
                }
                Menu("Dos"){
                    Button("Uno"){
                        
                    }
                    Button("Dos"){
                        
                    }
                    Button("Tres"){
                        
                    }
                }
                Button("Tres"){
                    
                }
            }
            Button("Two"){
                
            }
            Menu("Three"){
                Button("Uno"){
                    
                }
                Button("Dos"){
                    
                }
                Button("Tres"){
                    
                }
            }
        }
    }
}

#Preview {
    ControlGroupMenuBootcamp()
}
