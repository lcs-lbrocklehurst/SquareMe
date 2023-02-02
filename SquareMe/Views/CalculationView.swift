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
    
    //step two
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
    
    //take the input and format it for output
    var formattedOutputValue: String {
        
        //Step Three
        // See if we have a number to work with!
        //get a non optional double
        guard let numberToSquare = inputGivenAsOptionalDouble else {
            
            return "Please enter a numeric value, such as: 5.0"
        }
        
        // We do have a number to work with ... so square it
        let squaredNumber = numberToSquare * numberToSquare
        
            //Step Four
        // Return the formatted number
        return squaredNumber.formatted(.number.precision(.fractionLength(1)))
        
    }
    
    var body: some View {
        NavigationView {
            VStack {
                //step one
      TextField("5.5", text: $inputGiven)
                .font(.largeTitle)
                .padding()
                
                Text(formattedOutputValue)
                    .font(.largeTitle)
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
