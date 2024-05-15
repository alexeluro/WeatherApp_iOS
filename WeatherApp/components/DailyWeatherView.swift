//
//  DailyWeatherView.swift
//  WeatherApp
//
//  Created by Alex Eluro on 15/05/2024.
//

import SwiftUI

struct DailyWeatherView: View {
    
    var weatherData: WeatherData
    
    var body: some View {
        VStack() {
            
            Text(weatherData.dayOfWeek)
                .font(.system(size: 16, weight: .bold, design: .default))
                .foregroundColor(.white)
            
            Image(systemName: weatherData.weatherIcon)
                .renderingMode(.original)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 50, height: 50)
            
            Text("\(weatherData.temperature)°C")
                .font(.system(size: 18, weight: .bold, design: .default))
                .foregroundColor(.white)
            
        }
    }
}

#Preview {
    DailyWeatherView(weatherData: Constants.defaultWeatherData.first!)
}
