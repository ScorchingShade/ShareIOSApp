//
//  HomeView.swift
//  Advanced UI Design
//
//  Created by Ankush on 30/01/23.
//

import SwiftUI

struct HomeView: View {
    //MARK: - PROPERTY
    @AppStorage("onboarding") var isOnboardingViewActive: Bool=false
    
    //MARK: - BODY
    var body: some View {
        VStack(spacing: 20) {
            Text("Home")
                .font(.largeTitle)
            Button(action:{
                isOnboardingViewActive=true
            }){
                Text("Start")
            }
            
        } //MARK: VSTACK
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
