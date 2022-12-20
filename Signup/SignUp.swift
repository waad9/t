//
//  ContentView.swift
//  Signup
//
//  Created by Raniyah Alotaibi on 19/05/1444 AH.
//

import SwiftUI

struct SingUp: View {
    @State private var Username = ""
    @State private var Password = ""
    @State private var Email = ""
    var body: some View {
      
        ZStack {
                    
                    RoundedRectangle(cornerRadius: 70.0)
                        .frame(maxWidth: .infinity)
                        .foregroundColor(.white)
                        .ignoresSafeArea()
                        .padding(.top,-30)
                        .padding(.top,130.0)
                    
                    
            Text("Sing Up")
                        .font(.system(size: 30))
                        .fontWeight(.regular)
                        .foregroundColor(Color(red: 0.524, green: 0.651, blue: 0.619))
                        .multilineTextAlignment(.center)
                        .padding(.bottom,583.0)
                    
            VStack {
                           
                           RoundedRectangle (cornerRadius: 12.0)
                               .frame(width: 200.0 ,height: 50.0)
                               .foregroundColor(Color(red: 0.947, green: 0.7, blue: 0.39))
                           //.padding(.leading, 4.42)
                               .padding(.top,600.0)
                           
                       }
                    
                    ZStack {
                        
                        
                        Button {
                            print("s")
                        }label: {
                            Text ("Sing Up")
                                .foregroundColor(Color.white)
                                .padding(.top,594.0)
                            
                        }
                    }
                    
                    VStack {
                        
                        RoundedRectangle (cornerRadius: 12.0)
                            .frame(width: 360.0 ,height: 46.0)
                            .foregroundColor(Color(red: 0.974, green: 0.964, blue: 0.965))
                        //.padding(.leading, 4.42)
                            .padding(.bottom,180.0)
                        
                    }
                    
                    VStack {
                        
                        RoundedRectangle (cornerRadius: 12.0)
                            .frame(width: 360.0 ,height: 46.0)
                            .foregroundColor(Color(red: 0.974, green: 0.964, blue: 0.965))
                        //.padding(.leading, 4.42)
                            .padding(.bottom,380.0)
                        
                    }
                    
                    VStack {
                        
                        RoundedRectangle (cornerRadius: 12.0)
                            .frame(width: 360.0 ,height: 46.0)
                            .foregroundColor(Color(red: 0.974, green: 0.964, blue: 0.965))
                        //.padding(.leading, 4.42)
                            .padding(.bottom, -70.0)
                        
                        
                        
                        
                        
                        VStack {
                            Text("Username:")
                                .frame(width: 200.0)
                                .fontWeight(.semibold)
                                .foregroundColor(Color(red: 0.593, green: 0.539, blue: 0.545))
                                .multilineTextAlignment(.leading)
                                .padding(.top, -230.0)
                                .padding(.trailing, 270.0)
                            
                            
                            Text("Password:")
                                .frame(width: 200.0)
                                .fontWeight(.semibold)
                                .foregroundColor(Color(red: 0.593, green: 0.539, blue: 0.545))
                                .multilineTextAlignment(.leading)
                                .padding(.top, -138.0)
                                .padding([.leading],-240.0)
                            
                            
                            
                            Text("Email  :")
                                .frame(width: 200.0)
                                .fontWeight(.semibold)
                                .foregroundColor(Color(red: 0.586, green: 0.531, blue: 0.537))
                                .multilineTextAlignment(.leading)
                                .padding(.top, -55.0)
                            
                                .padding(.trailing, 300.0)
                            
                            
                            
                        }
                        
                        
                        
                }
            
                    .overlay {
                                       
                                       TextField( "Enter your username",          text: $Username)
                                           .padding( .bottom, 400.0 )
                                           .padding(.leading, 84.0
                                           )
                                       
                                   }
                           }
                           
                           .overlay {
                               
                               SecureField(" Enter you password ",          text: $Password)
                                   .padding( .bottom, 200 )
                                   .padding(.leading, 80.0
                                   )
                               
                           }
                           .overlay {
                               
                               TextField("     Enter your email ",          text: $Email)
                                   .padding( .bottom, -00 )
                                   .padding(.leading, 66.0
                                   )
                               
                           }
                                           
                           
                           }
                }
        
    
                                
                
        struct SingUp_Previews: PreviewProvider {
            static var previews: some View {
                SingUp ()
            }
        }
