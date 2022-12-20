//
//  SignIn.swift
//  Signup
//
//  Created by Raniyah Alotaibi on 26/05/1444 AH.
//

import SwiftUI

struct SignIn: View {
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
            
            
            Text("Sing In ")
                .font(.system(size: 30))
                .fontWeight(.regular)
                .foregroundColor(Color(red: 0.524, green: 0.651, blue: 0.619))
                .multilineTextAlignment(.center)
                .padding(.bottom, 650)

            
            VStack {
                
                RoundedRectangle (cornerRadius: 12.0)
                    .frame(width: 200.0 ,height: 50.0)
                    .foregroundColor(Color(red: 0.947, green: 0.7, blue: 0.39))
                //.padding(.leading, 4.42)
                    .padding(.top, 600.0)
                
            }
            
            ZStack {
                
                
                Button {
                    print("s")
                }label: {
                    Text ("Sing In ")
                        .foregroundColor(Color.white)
                        .padding(.top,594.0)
                    
                }
            }
            ZStack {
                
                
                Button {
                    print("s")
                }label: {
                    Text ("Sing Up ")
                        .foregroundColor(Color(red: 242/255, green: 178/255, blue: 99/255))
                        .padding(.top,685)
                    
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
            
            ZStack {
                
                
                Button {
                    print("s")
                }label:
                {
                    Text ("Forgot password?")
                        .foregroundColor(Color(red: 0.947, green: 0.524, blue: 0.522))
                    
                        .padding(.leading,-164.0)
                    
                }
            }
            
            
            
            VStack {
                
                
                VStack {
                    Text("Username:")
                        .frame(width: 200.0)
                        .fontWeight(.semibold)
                        .foregroundColor(Color(red: 0.593, green: 0.539, blue: 0.545))
                        .multilineTextAlignment(.leading)
                        .padding(.top, -234.0)
                        .padding(.trailing, 258.0)
                    
                    
                    Text("Password:")
                        .frame(width: 200.0)
                        .fontWeight(.semibold)
                        .foregroundColor(Color(red: 0.593, green: 0.539, blue: 0.545))
                        .multilineTextAlignment(.leading)
                        .padding(.top, -144.0)
                        .padding([.leading],-231.0)
                    
                    
                    
                }
                
                
                
            }
            
            .overlay {
                
                TextField( "Enter your username",          text: $Username)
                    .padding( [.top, .trailing], -240.0 )
                    .padding([.top, .leading], 76.0
                    )
                
            }
        }
        
        .overlay {
            
            TextField("Enter your password ", text: $Password)
                .padding( .bottom, 191.0 )
                .padding(.leading, 77.0 )
            
        }
        
        
        
    }
}

struct SignIn_Previews: PreviewProvider {
    static var previews: some View {
        SignIn()
    }
}
