//
//  Constants.swift
//  WeatherApp
//
//  Created by Alex Eluro on 15/05/2024.
//

import Foundation



struct Constants {
    
    static var defaultWeatherData: [WeatherData] = [
        WeatherData(id: UUID.init(), dayOfWeek: "Mon", temperature: "36", weatherIcon: "sun.dust.fill"),
        WeatherData(id: UUID.init(), dayOfWeek: "Tue", temperature: "32", weatherIcon: "cloud.sun.fill"),
        WeatherData(id: UUID.init(), dayOfWeek: "Wed", temperature: "37", weatherIcon: "sun.max.fill"),
        WeatherData(id: UUID.init(), dayOfWeek: "Thur", temperature: "23", weatherIcon: "cloud.rain.fill"),
        WeatherData(id: UUID.init(), dayOfWeek: "Fri", temperature: "34", weatherIcon: "cloud.sun.fill")
    ]
    
}
