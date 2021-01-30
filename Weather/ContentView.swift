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
            
            // HStack for forecast relating to the days of the week.
            HStack(alignment: .bottom) {
                weatherView(weatherImage: "cloud.sun.fill", temperature: 59, dayOfWeek: "TUE")
                
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

// Some sort of function? All I know is that it's reusable.
struct weatherView: View {
    
    var weatherImage: String
    var temperature: Int
    var dayOfWeek: String
    
    var body: some View {
        VStack{
            Text(dayOfWeek)
                .font(.system(size: 16, weight: .medium, design: .default))
                .foregroundColor(.white)
            Image(systemName: weatherImage)
                .renderingMode(.original)
                .aspectRatio(contentMode: .fit)
                .frame(width: 50, height: 50)
            Text("\(temperature)°")
                .font(.system(size: 40, weight: .regular))
        }
    }
}
