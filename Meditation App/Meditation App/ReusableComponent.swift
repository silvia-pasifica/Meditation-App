//
//  ReusableComponent.swift
//  Meditation App
//
//  Created by Silvia Pasica on 22/07/23.
//

import SwiftUI
import Foundation

extension Font {
    static var subTitleText: Font {
        Font.custom("Lora", size: 36).weight(.regular)
    }
    
    static var titleText: Font {
        Font.custom("Lora", size: 36).weight(.bold)
    }
    
    static var contentText: Font {
        Font.custom("Lora", size: 16).weight(.regular)
    }
    
    static var buttonOrange: Font {
        Font.custom("Lora", size: 18).weight(.bold)
    }
    
    static var headingText: Font {
        Font.custom("Lora", size: 16).weight(.bold)
    }
    
   
}

extension View {
    
    func underlineTextField() -> some View {
        self
            .padding(EdgeInsets(top: 0, leading: 10, bottom: 10, trailing: 10))
            .overlay(Rectangle().frame(height: 1).padding(.top, 35))
            .foregroundColor(.gray)
    }
    
    func underlineDOBTextField() -> some View {
        self
            .padding(EdgeInsets(top: 30, leading: 10, bottom: 30, trailing: 235))
            .overlay(Rectangle().frame(height: 1).padding(.top, 35))
            .foregroundColor(.gray)
    }
    
    func underlineIdentityTextField() -> some View {
        self
            .padding(EdgeInsets(top: 20, leading: 0, bottom: 10, trailing: 35))
            .overlay(Rectangle().frame(height: 1).padding(.top, 30))
            .foregroundColor(.gray)
    }
    
    func placeholder<Content: View>(
            when shouldShow: Bool,
            alignment: Alignment = .leading,
            @ViewBuilder placeholder: () -> Content) -> some View {

            ZStack(alignment: alignment) {
                placeholder().opacity(shouldShow ? 0.5 : 0)
                self
            }
        }
    
}

extension Color {
    
    struct Background {
        static let blue = Color("light-blue")
        static let green = Color("green")
        static let orange = Color("orange")
        static let white = Color("white")
    }
    
    struct Text {
        static let secondary = Color("light-black")
        
        static let primary = Color.black
        
        static let primaryOnColoredBackground = Color.white
        
        static let third = Color("neutral-grey")
    }
    
   
    
}



