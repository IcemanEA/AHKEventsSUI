//
//  ButtonStyle.swift
//  AHKEventsSUI
//
//  Created by Egor Ledkov on 25.09.2022.
//

import SwiftUI

struct StandartButtonStyle: ButtonStyle {
//    let color: Color
    
    func makeBody(configuration: Configuration) -> some View {
        let color = Color(red: 31.0/255, green: 77.0/255, blue: 166.0/255)
        let pressColor = color.opacity(0.5)
        
        return configuration.label
            .font(.title3)
            .foregroundColor(.white)
            .frame(maxWidth: .infinity, maxHeight: 50)
            .background(configuration.isPressed ? pressColor : color)
            .cornerRadius(10)
            .scaleEffect(configuration.isPressed ? 0.95 : 1.0)
    }
}

struct ButtonStyle_Previews: PreviewProvider {
    static var previews: some View {
        VStack(spacing: 20) {
            Button(action: {}) {
                Text("Start")
                    .fontWeight(.bold)
            }
            .buttonStyle(StandartButtonStyle())
            
            Button("Finish", action: {})
                .buttonStyle(StandartButtonStyle())
        }
        .preferredColorScheme(.light)
    }
}
