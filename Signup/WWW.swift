//
//  WWW.swift
//  Signup
//
//  Created by Hajar Alruqi on 28/05/1444 AH.
//

import Foundation
import SwiftUI

struct WWW: View {
    var body: some View {
        
        NavigationView {
            
            ZStack {
                
                
                
                Text("Payment")
                    .font(.system(size: 30))
                    .fontWeight(.bold)
                    .foregroundColor(Color(red: 0.524, green: 0.651, blue: 0.619))
                    .multilineTextAlignment(.center)
                    .padding(.bottom,678.0)
                
                
                RoundedRectangle(cornerRadius: 70.0)
                    .frame(maxWidth: .infinity)
                    .foregroundColor(.white)
                    .ignoresSafeArea()
                    .padding(.top,-30)
                    .padding(.top,130.0)
                
                
                
                Text("Select your preferred payment method")
                    .font(.system(size: 20))
                    .fontWeight(.regular)
                    .foregroundColor(Color(red: 0.516, green: 0.501, blue: 0.502))
                    .multilineTextAlignment(.center)
                    .padding(.top, -300.0)
                
                
                
                
                
                
                
                
                VStack {
                    
                    
                    RoundedRectangle (cornerRadius: 12.0)
                        .frame(width: 360.0 ,height: 68.0)
                        .foregroundColor(Color(red: 0.974, green: 0.964, blue: 0.965, opacity: 0.927))
                    //.padding(.leading, 4.42)
                        .padding(.bottom,180.0)
                    
                    
                }
                
                
                VStack {
                    
                    
                    RoundedRectangle (cornerRadius: 12.0)
                        .frame(width: 360.0 ,height:68.0)
                        .foregroundColor(Color(red: 0.949, green: 0.687, blue: 0.346))
                    //.padding(.leading, 4.42)
                        .padding(.bottom,380.0)
                    
                }
                
                VStack {
                    
                    RoundedRectangle (cornerRadius: 12.0)
                        .frame(width: 360.0 ,height: 68.0)
                        .foregroundColor(Color(red: 0.974, green: 0.964, blue: 0.965))
                    //.padding(.leading, 4.42)
                        .padding(.bottom, -30.0)
                    
                    
                    
                    
                    
                }
                
                ZStack {
                    
                    
                    Button {
                        print("s")
                    }label: {
                        NavigationLink(destination: ContentView()){
                            Text("Mada")
                                .font(.title3)
                                .fontWeight(.bold)
                                .foregroundColor(Color.white)
                                .multilineTextAlignment(.center)
                                .lineLimit(nil)
                                .padding(.bottom, 380.0)
                        }
                    }
                    
                    
                    ZStack {
                        
                        
                        Button {
                            print("s")
                        }label: {
                            NavigationLink(destination: ContentView()){
                                Text("Visa")
                                    .font(.title3)
                                    .fontWeight(.bold)
                                    .foregroundColor(Color(red: 0.949, green: 0.687, blue: 0.346))
                                    .multilineTextAlignment(.center)
                                    .lineLimit(nil)
                                    .padding(.bottom, 180.0)
                                
                                
                                
                                
                            }
                        }
                        ZStack {
                            
                            Button {
                                print("s")
                            }label: {
                                NavigationLink(destination: ContentView()){
                                    Text("Apple Pay")
                                        .font(.title3)
                                        .fontWeight(.bold)
                                        .foregroundColor(Color(red: 0.949, green: 0.687, blue: 0.346))
                                        .multilineTextAlignment(.center)
                                        .lineLimit(nil)
                                        .padding(.bottom, -30.0)
                                }
                            }
                        }
                    }
                }
                
            }
        }
    }
}
struct WWW_Previews: PreviewProvider {
    static var previews: some View {
        WWW()
    }
}
