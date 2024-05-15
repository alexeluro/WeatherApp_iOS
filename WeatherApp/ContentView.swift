//
//  ContentView.swift
//  WeatherApp
//
//  Created by Alex Eluro on 15/05/2024.
//

import SwiftUI

struct ContentView: View {
    
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

struct WeeklyWeatherView: View {
    
    var weeklyWeatherReport: [WeatherData] = []
    
    var body: some View {
        HStack(spacing: 16) {
            ForEach(weeklyWeatherReport) { report in
                DailyWeatherView(weatherImage: report.weatherIcon, temperature: report.temperature, dayOfWeek: report.dayOfWeek
                )
            }
        }
        
    }
    
}

struct DailyWeatherView: View{
    
    var weatherImage: String
    var temperature: String
    var dayOfWeek: String
    
    var body: some View {
        VStack() {
            
            Text(dayOfWeek)
                .font(.system(size: 16, weight: .bold, design: .default))
                .foregroundColor(.white)
            
            Image(systemName: weatherImage)
                .renderingMode(.original)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 50, height: 50)
            
            Text("\(temperature)°C")
                .font(.system(size: 18, weight: .bold, design: .default))
                .foregroundColor(.white)
            
        }
    }
}

struct WeatherData: Identifiable{
    var id: UUID
    var dayOfWeek: String
    var temperature: String
    var weatherIcon: String
    
}

struct Constants {
    
    static var defaultWeatherData: [WeatherData] = [
        WeatherData(id: UUID.init(), dayOfWeek: "Mon", temperature: "36", weatherIcon: "sun.dust.fill"),
        WeatherData(id: UUID.init(), dayOfWeek: "Tue", temperature: "32", weatherIcon: "cloud.sun.fill"),
        WeatherData(id: UUID.init(), dayOfWeek: "Wed", temperature: "37", weatherIcon: "sun.max.fill"),
        WeatherData(id: UUID.init(), dayOfWeek: "Thur", temperature: "23", weatherIcon: "cloud.rain.fill"),
        WeatherData(id: UUID.init(), dayOfWeek: "Fri", temperature: "34", weatherIcon: "cloud.sun.fill")
    ]
    
}

#Preview {
    ContentView()
}
