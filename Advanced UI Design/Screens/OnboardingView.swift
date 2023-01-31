//
//  OnboardingView.swift
//  Advanced UI Design
//
//  Created by Ankush on 01/02/23.
//

import SwiftUI

struct OnboardingView: View {
    //MARK: - PROPERTY
    @AppStorage("onboarding") var isOnboardingViewActive: Bool=true
    
    //MARK: - BODY
    
    var body: some View {
        ZStack {
            Color("ColorBlue")
                .ignoresSafeArea(.all, edges: .all)
            
            VStack(spacing: 20) {
                
                Spacer()
                
                //MARK: HEADER
                VStack(spacing: 0) {
                    
                    Text("Share")
                        .fontWeight(.heavy)
                        .font(.system(size:60))
                        .foregroundColor(.white)
                    
                    Text("""
                    It's not how much we give but
                    how much love we put into giving
                    """)
                    .foregroundColor(.white)
                    .font(.title3)
                    .fontWeight(.light)
                    .padding(.horizontal, 10)
                    .multilineTextAlignment(.center)
                }
                
                //MARK: CENTER
                
                ZStack{
                    ZStack{
                        Circle()
                            .stroke(.white.opacity(0.2), lineWidth: 40)
                            .frame(width: 260, height: 260, alignment: .center)
                        Circle()
                            .stroke(.white.opacity(0.2), lineWidth: 80)
                            .frame(width: 260, height: 260, alignment: .center)
                    }
                    Image("character-1")
                        .resizable()
                        .scaledToFit()
                }
                
                Spacer()
                
                //MARK: FOOTER
                ZStack{
                    // Parts of Custom button
                    // 1. Background(Static)
                    
                    Capsule()
                        .fill(Color(.white).opacity(0.2))
                    Capsule()
                        .fill(Color.white.opacity(0.2))
                        .padding(8)
                    // 2. Call-to-action(Static)
                    Text("Get Started")
                        .foregroundColor(.white)
                        .font(.system(.title3, design: .rounded))
                        .fontWeight(.bold)
                        .offset(x: 20)
                    
                    // 3. Capsule (Dynamic Width)
                    HStack{
                        Capsule()
                            .fill(Color("ColorRed"))
                            .frame(width:80)
                        Spacer()
                    }
                    // 4. Circle (Draggable)
                    HStack {
                        ZStack {
                            Circle()
                                .fill(Color("ColorRed"))
                            Circle()
                                .fill(.black)
                                .padding(8)
                                .opacity(0.15)
                            Image(systemName: "chevron.right.2")
                                .font(.system(size:24, weight: .bold))
                        }
                        .foregroundColor(.white)
                        .frame(width:80, height:80, alignment: .center)
                        .onTapGesture {
                            isOnboardingViewActive=false
                        }
                        
                        Spacer()
                    }//: HSTACK
                }//: FOOTER
                .frame(height:80, alignment: .center)
                .padding()
                
                
            } //MARK: VSTACK
        } //MARK: ZSTACK
    }
    
    
}

struct OnboardingView_Previews: PreviewProvider {
    static var previews: some View {
        OnboardingView()
    }
}
