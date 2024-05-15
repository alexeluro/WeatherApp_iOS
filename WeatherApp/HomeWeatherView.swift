//
//  HomeWeatherView.swift
//  WeatherApp
//
//  Created by Alex Eluro on 15/05/2024.
//

import SwiftUI

struct HomeWeatherView: View {
    
    @State private var isNightMode: Bool = true
    
    
    var body: some View {
        ZStack {
            NavigationView {
                ZStack {
                    LinearGradient(
                        colors: [isNightMode ? .black : .blue, isNightMode ? .gray : Color("lightBlue")],
                        startPoint: .top,
                        endPoint: .bottomTrailing
                    )
                    .edgesIgnoringSafeArea(.all)
                    VStack {
                        Text("Lagos, NG")
                            .font(.system(size: 32, weight: .bold, design: .default))
                            .foregroundColor(.white)
                            .padding()
                        VStack(spacing: 8) {
                            Image(systemName: toggleTodaysWeather(isNight: isNightMode))
                                .renderingMode(.original)
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .frame(width: 180, height: 180)
                            
                            Text("25°C")
                                .font(.system(size: 70, weight: .bold, design: .default))
                                .foregroundColor(.white)
                        }
                        .padding(.bottom, 40)
                        
                        WeeklyWeatherView(weeklyWeatherReport: Constants.defaultWeatherData)
                        
                        Spacer()
                        
                        CustomButton(text: "Switch to \(isNightMode ? "Light" : "Night")", action: {
                            isNightMode = !isNightMode
                            print("isNightMode: \(isNightMode)")
                        },
                                     backgroundColor: Color.white,
                                     textColor: Color.blue)
                        
                        Spacer()
                    }
                
                }
            }
        }
        
    }
    
    func toggleTodaysWeather(isNight: Bool) -> String {
        return isNight ? "moon.stars.fill" : "cloud.sun.fill"
    }
}

#Preview {
    HomeWeatherView()
}
