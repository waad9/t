//
//  DSD.swift
//  Signup
//
//  Created by Hajar Alruqi on 28/05/1444 AH.
//

import Foundation
import SwiftUI

struct DSD: View {
    var body: some View {
        VStack{
            Home(product: productList[0])
        }
    }
}



struct Home : View {
    
    @State var product : Product
    @State var selectedSide:SideOfTheForce = .Profile

    var body: some View{
      
            VStack{
                
                HStack(spacing: 10){
                    
                    Button(action: {
                        
                    })
                    {
                        
                      //  Image(systemName: "chevron.left")
                         //  .font(.system(size: 28))
                          //  .foregroundColor(.gray)
                        
                    }
                    
                    //                Text("Profile")
                    //                    .font(.title)
                    
                    Spacer(minLength: 0)
                    
                    Button(action: {
                        
                    }) {
                        
                        //Image(systemName: "bell")
                          //  .font(.system(size: 25))
                        //                     .background(Color("Color"))
                          //  .foregroundColor(Color("Color"))
                          //  .padding(.vertical, 20)
                         //   .padding(.horizontal, 12)
                        // .background(Color("Color"))
                         //   .cornerRadius(10)
                    }
                }
                .padding()
                VStack{
                    Picker("Choose assdfgh", selection: $selectedSide){
                        ForEach(SideOfTheForce.allCases , id: \.self){
                            Text($0.rawValue)

                        }

                        // .font(Font.custom("DIN Condensed", size: 8))
                        .background(.white)
                        .overlay(
                            RoundedRectangle(cornerRadius: 15)
                                .stroke(Color.white, lineWidth:5)
                        )
                        .padding()


                    }
                    .padding(.top, 45.0)
                    .frame(height: nil)
                    .pickerStyle(SegmentedPickerStyle())
                    allViews(product: product, selectedSide: selectedSide)
                }
                
                
                Spacer()
            }
            
        }
        
    }



enum SideOfTheForce: String, CaseIterable{
case Profile = "Profile"
case Myorders = "My orders"
case Appointments = "Appointments"
}


struct allViews: View {
    @State var index = 0
    @State var product : Product
    var selectedSide: SideOfTheForce
    var body: some View{
        switch selectedSide {
        case .Profile:
            Profileview(product:product)
        case .Myorders:
            Myordersview()
        case .Appointments:
            Appointmentsview()
        }
    }
}


struct Profileview: View {
    @State var FullName = ""
    @State var MobileNumber = ""
    @State var Email = ""
    @State var product: Product
    var body: some View {
        NavigationView{
           
            ZStack {
                
               
                VStack {
                    
                    
                    RoundedRectangle (cornerRadius: 12.0)
                        .frame(width: 200.0 ,height: 50.0)
                        .foregroundColor(Color(red: 0.947, green: 0.7, blue: 0.39))
                    //.padding(.leading, 4.42)
                        .padding(.top,340.0)
                    
                }
                
                ZStack {
                    
                    
                    Button {
                        print("s")
                    }label: {
                        NavigationLink(destination:RRR (name: FullName, mobile: MobileNumber, email:Email, product: product)){
                            Text ("Save")
                                .font(.title)
                                .fontWeight(.semibold)
                            
                                .foregroundColor(Color.white)
                                .padding(.top, 340.0)



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
        
        struct Myordersview: View {
            var body: some View {
                
                VStack{
                    HStack(alignment: .top){
                        
                        //button my order
                        
                        HStack{
                            
                            Button(action: {
                                
                                //            self.index = 0
                                
                            }) {
                                
                                Text("Current orders")
                                    .foregroundColor(Color ("Color 1"))
                                    .padding(.vertical, 12)
                                    .padding(.horizontal)
                                    .background(Color("Color"))
                                    .cornerRadius(10)
                            }
                            
                            Spacer()
                            
                            Button(action: {
                                
                                // self.index = 1
                                
                            }) {
                                
                                Text("Previous orders")
                                    .foregroundColor(Color ("Color 1"))
                                    .padding(.vertical, 12)
                                    .padding(.horizontal)
                                    .background( Color("Color"))
                                    .cornerRadius(10)
                            }
                            
                            
                        }
                        .padding(.horizontal,8)
                        .padding(.vertical,5)
                        .background(Color("Color1"))
                        .cornerRadius(8)
                        .shadow(color: Color.black.opacity(0.1), radius: 5, x: 8, y: 8)
                        .shadow(color: Color.white.opacity(0.5), radius: 5, x: -8, y: -8)
                        .padding(.horizontal)
                        .padding(.top,25)
                        
                        
                        
                        .padding(.top,20)
                        Spacer(minLength: 0)
                    }
                    .background(Color("Color1").edgesIgnoringSafeArea(.all))
                    Spacer()
                }
            }
        }
        
        
        struct Appointmentsview: View {
            var body: some View {
                
                VStack{
                    Text("")
                }
                
            }
        }


struct DSD_Previews: PreviewProvider {
    static var previews: some View {
        DSD()
    }
}

