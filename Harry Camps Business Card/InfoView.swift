//
//  InfoView.swift
//  Harry Camps Business Card
//
//  Created by Harry Eazy on 11/01/2021.
//

import SwiftUI

struct InfoView: View {
    
    // Vars to initialise to set the image on left and text on right
    let text: String
    let imageName: String
    
    var body: some View {
        // Change corner radius to make it more rounded
        RoundedRectangle(cornerRadius: 25)
            // Width and height are optional so let the width be auto generated based on parent only need to set height
            .frame(height: 50.0)
            .foregroundColor(.white)
            // Set overlay as a text
            // Set H stack for phone image and tel number
            .overlay(HStack {
                Image(systemName:imageName ).foregroundColor(Color(red: 0.20, green: 0.29, blue: 0.37))
                Text(text).foregroundColor(.black)
            })
            // So RoundedRectangle doesn't touch edges looks cleaner
            .padding(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
    }
}


struct InfoView_Previews: PreviewProvider {
    static var previews: some View {
        InfoView(text: "+447 123 456 789", imageName: "phone.fill")
            .previewLayout(.sizeThatFits)
    }
}
