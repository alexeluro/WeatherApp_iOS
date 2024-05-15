//
//  WeeklyWeatherView.swift
//  WeatherApp
//
//  Created by Alex Eluro on 15/05/2024.
//

import SwiftUI

struct WeeklyWeatherView: View {
    
    var weeklyWeatherReport: [WeatherData] = []
    
    var body: some View {
        HStack(spacing: 16) {
            ForEach(weeklyWeatherReport) { report in
                DailyWeatherView(weatherData: report)
            }
        }
        
    }
    
}

#Preview {
    WeeklyWeatherView(weeklyWeatherReport: Constants.defaultWeatherData)
}
