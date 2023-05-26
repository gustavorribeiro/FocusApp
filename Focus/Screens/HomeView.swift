//
//  HomeView.swift
//  Focus
//
//  Created by Gustavo de Moraes Ribeiro on 25/05/23.
//

import SwiftUI

struct HomeView: View {
    
    @AppStorage("onboarding") var isOnboardingViewActive: Bool = false
    
    var body: some View {
        VStack(spacing: 20) {
            //MARK: -HEADER
            Spacer()
            
            Image("character-2")
                .resizable()
                .scaledToFit()
                .padding()
            
            //MARK: -CENTER
            Text("The time that leads to mastery is dependent on the intensity of our focus")
                .font(.title3)
                .fontWeight(.light)
                .foregroundColor(.secondary)
                .multilineTextAlignment(.center)
                .padding()
            
            Button(action: {
                isOnboardingViewActive = true
            }) {
                Text("Restart")
            }
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
