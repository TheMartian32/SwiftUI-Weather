//
//  ContentView.swift
//  Weather
//
//  Created by Justin Buan on 1/27/21.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            // Making the background color a linear gradient and starting it from the top to the bottom. Also ignroing safe area so it fills up the entire screen.
            LinearGradient(gradient: Gradient(colors: [.black, .blue, .white]),
                           startPoint: .top,
                           endPoint: .bottomTrailing)
                // Ignoring safe area
                .edgesIgnoringSafeArea(.all)
            
            VStack {
                // Adding text to screen with modifiers.
                Text("Cupertino, CA")
                    .font(.system(size: 32,
                                  weight: .heavy,
                                  design: .default ))
                    // Views wrap themselves around each other.
                    .foregroundColor(.white)
                    .padding()
                
                VStack(spacing: 8) {
                    Image(systemName: "cloud.sun.fill")
                        .renderingMode(.original)
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 180, height: 180)
                        
                    Text("76°")
                        .font(.system(size: 70, weight: .medium))
                        .foregroundColor(.white)
                    

                }
               
                Spacer()
                
                
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
