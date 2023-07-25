//
//  OnboardingPageViewModel.swift
//  Meditation App
//
//  Created by Silvia Pasica on 22/07/23.
//

import SwiftUI

struct OnboardingPageView: View {
    var body: some View {
        ZStack{
            Color.Background.blue
                .ignoresSafeArea()
            VStack{
                Spacer()
                Image("meditation")
                    .resizable()
                    .scaledToFill()
                    .frame(height: 488)
                    .colorMultiply(Color.Background.blue)
                    .clipped()
            }
            .edgesIgnoringSafeArea(.bottom)
            
            VStack(alignment: .center){
                Text("Have the best")
                    .font(.subTitleText)
                    .padding(.bottom, 4)
                
                Text("Yoga Experience")
                    .font(.titleText)
                    .fontWeight(.bold)
                    .padding(.bottom, 24)
                Text("Transform your body and mind with our comprehensive yoga app. Discover expert-led classes, personalized routines")
                    .font(.contentText)
                    .lineSpacing(15)
                    .multilineTextAlignment(.center)
        
                Button{
                    
                }label: {
                    Text("Start Journey")
                        .font(.buttonOrange)
                        .foregroundColor(Color.Text.primaryOnColoredBackground)
                        .padding(.vertical, 17)
                        .padding(.horizontal, 55)
                        .background(Color.Background.orange).cornerRadius(66)
                }
                .padding(.vertical, 32)
                Spacer()
                
            }
            .padding()
        }
    }
}

struct OnboardingPageViewModel_Previews: PreviewProvider {
    static var previews: some View {
        OnboardingPageView()
    }
}
