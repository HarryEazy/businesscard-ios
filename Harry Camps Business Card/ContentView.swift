//
//  ContentView.swift
//  Harry Camps Business Card
//
//  Created by Harry Eazy on 09/01/2021.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        
        ZStack {
           
            Color(red: 0.20, green: 0.29, blue: 0.37, opacity: 1)
            .edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
            //Vertical stack
            VStack {
                // Image name
                Image("harry")
                    // Allow image to be resized
                    .resizable()
                    // Set ratio to fit screen default was fill
                    .aspectRatio(contentMode: .fit)
                    // Set size of image
                    .frame(width: 150, height: 210)
                    // Change shape of image to circle
                    .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
                    // Add overlay on top of image to create border
                    .overlay(Circle().stroke(Color.white, lineWidth: 2.5))
                Text("Harry Camps")
                    // Add custom font from Goole fonts
                    // Create group for fonts in project
                    // Add ttf file to group
                    // Plist look for "Fonts provided by application
                    // Add full file name to it including ext
                    .font(Font.custom("YuseiMagic-Regular", size: 40))
                    .bold()
                    .foregroundColor(.white)
                Text("iOS Developer")
                    .foregroundColor(.white)
                    .font(.system(size: 20))
                Divider()
                
                InfoView(text: "+447 123 456 789", imageName: "phone.fill")
                InfoView(text: "Heazy@ezclap.com", imageName: "envelope.fill")
            }
            

        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView().previewDevice(PreviewDevice(rawValue: "iPhone X"))
    }
}

