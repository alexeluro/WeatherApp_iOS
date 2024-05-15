//
//  WeatherData.swift
//  WeatherApp
//
//  Created by Alex Eluro on 15/05/2024.
//

import Foundation


struct WeatherData: Identifiable{
    var id: UUID
    var dayOfWeek: String
    var temperature: String
    var weatherIcon: String
}
