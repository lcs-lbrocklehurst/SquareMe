//
//  CalculationView.swift
//  SquareMe
//
//  Created by Lewis Brocklehurst on 2023-02-02.
//

import SwiftUI

struct CalculationView: View {
    
    //MARK: Stored properties
    
    
   //keeps the input given by user
    @State var inputGiven = ""
    
    //MARK: Computed properties
    
    //Convert the input given into an optional double
    var inputGivenAsOptionalDouble: Double? {
        
        //attempt to create the optional double
        guard let inputGivenAsDouble = Double(inputGiven) else {
            // user gave us bad input ... cannot convert to double
            return nil
        }
        
        
        //we have an actual double, so return it
        return inputGivenAsDouble
}
    
    var body: some View {
        NavigationView {
            VStack {
      TextField("5.5", text: $inputGiven)
                .font(.largeTitle)
                .padding()
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
