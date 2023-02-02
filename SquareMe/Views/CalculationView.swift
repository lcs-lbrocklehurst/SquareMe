//
//  CalculationView.swift
//  SquareMe
//
//  Created by Lewis Brocklehurst on 2023-02-02.
//

import SwiftUI

struct CalculationView: View {
    
    //MARK: Stored properties
    
    
    //MARK: Computed properties
    @State var inputGiven = ""
    
    
    
    var body: some View {
        NavigationView {
            VStack {
      TextField("5.5", text: $inputGiven)
                    .font(.largeTitle)
                    .padding(<#T##insets: EdgeInsets##EdgeInsets#>)
            }
            .navigationTitle("Square me")
        }
        
    }
     
}

struct CalculationView_Previews: PreviewProvider {
    static var previews: some View {
        CalculationView()
    }
}
