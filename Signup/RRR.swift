//
//  RRR.swift
//  Signup
//
//  Created by Hajar Alruqi on 28/05/1444 AH.
//

import Foundation
import SwiftUI

struct RRR: View {
    
    let name: String
    let mobile : String
    let email : String
    @State var product : Product
    var body: some View {
      
            VStack {
                ZStack{
                
                    VStack {
                        
                        RoundedRectangle (cornerRadius: 12.0)
                            .frame(width: 200.0 ,height: 50.0)
                            .foregroundColor(Color(red: 0.947, green: 0.7, blue: 0.39))
                        //.padding(.leading, 4.42)
                            .padding(.top,390.0)
                        
                    }
                    
                    ZStack {
                        
                        
                        Button {
                            print("s")
                        }label: {
                            NavigationLink(destination: SwiftUIView(product:product)){
                               Text ("Edit")
                                   .font(.title)
                                    .foregroundColor(Color.white)
                                    .padding(.top, 390.0)
                            }
                            
                        }
                    }
                    
                    
                    VStack {
                        Text("Full Name :")
                            .frame(width: 200.0)
                            .fontWeight(.semibold)
                            .foregroundColor(Color(red: 0.334, green: 0.309, blue: 0.305))
                            .multilineTextAlignment(.leading)
                            .padding(.top, -230.0)
                            .padding(.trailing, 250.0)
                        
                        
                        
                        Text("Mobile :")
                            .frame(width: 200.0)
                            .fontWeight(.semibold)
                            .foregroundColor(Color(red: 0.334, green: 0.309, blue: 0.305))
                            .multilineTextAlignment(.leading)
                            .padding(.top, -140.0)
                            .padding(.trailing, 270.0)
                        
                        
                        
                        Text("Email :")
                            .foregroundColor(Color(red: 0.334, green: 0.309, blue: 0.305))
                            .frame(width: 200.0)
                            .fontWeight(.semibold)
                            .multilineTextAlignment(.leading)
                            .padding(.top, -55.0)
                        
                            .padding(.trailing, 280.0)
                        
                        
                    }
                    VStack{
                        Text(name)
                            .foregroundColor(Color(red: 0.597, green: 0.543, blue: 0.549))
                        
                            .padding(.leading, -170.0)
                            .padding(.top, -200.0)
                    }
                    VStack {
                        Text(mobile)
                        
                            .foregroundColor(Color(red: 0.597, green: 0.543, blue: 0.549))
                            .padding(.leading, -166.0)
                            .padding(.bottom, 180.0)
                    }
                    VStack {
                        Text(email)
                            .foregroundColor(Color(red: 0.597, green: 0.543, blue: 0.549))
                            .lineLimit(nil)
                            .padding(.leading, -170.0)
                        
                        
                        
                    }
                    
                    
                    
                }
                
                
            }
            
            
        }
   
}
struct RRR_Previews: PreviewProvider {
    static var previews: some View {
        RRR(name: "Enter your name", mobile: "05XXXXXXXX", email: "Enter your email address" , product:productList[0])
    }
}
