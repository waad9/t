//
//  PPP.swift
//  Signup
//
//  Created by Hajar Alruqi on 28/05/1444 AH.
//

import Foundation
import SwiftUI

struct PPP: View {
//
//    @Published var firstLogin = false
//    func func session;.firstLogin = true
      @State var FullName = ""
        @State var MobileNumber = ""
        @State var Email = ""
    @State var product : Product
        var body: some View {
            NavigationView{
                
                ZStack {
                    
                    
                    VStack {
//                        //.....
//                        else{
//                        if session.firstLogin {
//                                 PhotoUploadView()
//                                }
//
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
                            NavigationLink(destination:RRR (name: FullName, mobile: MobileNumber, email: Email, product: product)){
                                Text ("Save")
                                    .font(.title)
                                    .foregroundColor(Color.white)
                                    .padding(.top, 600.0)
                                
                                
                                
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
                                Text("Full Name :")
                                    .frame(width: 200.0)
                                    .fontWeight(.semibold)
                                    .foregroundColor(Color(red: 0.593, green: 0.539, blue: 0.545))
                                    .multilineTextAlignment(.leading)
                                    .padding(.top, -230.0)
                                    .padding(.trailing, 280.0)
                                
                                
                                Text("Mobile Number :")
                                    .frame(width: 200.0)
                                    .fontWeight(.semibold)
                                    .foregroundColor(Color(red: 0.593, green: 0.539, blue: 0.545))
                                    .multilineTextAlignment(.leading)
                                    .padding(.top, -140.0)
                                    .padding(.trailing, 230.0)
                                
                                
                                
                                Text("Email :")
                                    .frame(width: 200.0)
                                    .fontWeight(.semibold)
                                    .foregroundColor(Color(red: 0.586, green: 0.531, blue: 0.537))
                                    .multilineTextAlignment(.leading)
                                    .padding(.top, -55.0)
                                
                                    .padding(.trailing, 305.0)
                                
                                
                            }
                            .padding(.leading)
                            
                            
                            
                            .overlay {
                                
                                TextField("Enter Your Name",  text: $FullName)
                                    .padding( .bottom, 390.0 )
                                    .padding(.leading , 90)
                                
                                             
                            }
                        }
                        
                        .overlay {
                            
                            TextField("05XXXXXXXX ",    text: $MobileNumber)
                                .padding( .bottom, 180.0 )
                                .padding(.leading , 90)
                            
                        }
                        .overlay {
                            
                            TextField("Email Address",   text: $Email)
                                .padding( .bottom, -10.0 )
                                .padding(.leading ,90)
                        }
                        
                        
                    }
                }
            }
        }
        
    }

            

struct PPP_Previews: PreviewProvider {
    static var previews: some View {
        PPP(product:productList[0])
    }
}
