//
//  CustomButton.swift
//  WeatherApp
//
//  Created by Alex Eluro on 15/05/2024.
//

import SwiftUI

struct CustomButton: View {
    var text: String
    var action: () -> Void
    var backgroundColor: Color
    var textColor: Color
    
    var body: some View {
        Button(
            action: {
                action()
            },
            label: {
            Text(text)
                    .font(.system(size: 18, weight: .bold, design: .default))
                    .foregroundColor(textColor)
        }
        )
        .frame(width: 280, height: 50)
        .background(backgroundColor)
        .cornerRadius(10.0)
    }
}

#Preview {
    CustomButton(
        text: "Login",
        action: {
        print("Login tapped!")
    },
     backgroundColor: Color.black,
        textColor: Color.white)
}
