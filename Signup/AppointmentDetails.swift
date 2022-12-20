//
//  ServiceDetails.swift
//  SecondChallenge
//
//  Created by هاجر الروقي on 19/05/1444 AH.
//

import Foundation
import SwiftUI


struct AppointmentDetails: View {
    @State var product : Product
    var body: some View {
        ZStack{
            Color(uiColor: UIColor(red: 235/255, green: 232/255, blue: 231/255, alpha: 100))
            VStack{
                Image ("check-mark")
                    .resizable()
                    .frame(width:109.7,height:111)
                    .padding()
                    .foregroundColor(.white)
                if #available(iOS 16.0, *) {
                    Text("Your  appointment is confirmed")
                        .padding()
                        .font(.title)
                        .fontWeight(.bold)
                        .multilineTextAlignment(.center)
                        .foregroundColor( Color(uiColor: UIColor(red: 133/255, green: 116/255, blue: 117/255, alpha: 100)))
                } else {
                    // Fallback on earlier versions
                    Text("Your  appointment is confirmed")
                        .padding()
                        .font(.title)
                    //                                    .fontWeight(.bold)
                        .multilineTextAlignment(.center)
                        .foregroundColor( Color(uiColor: UIColor(red: 133/255, green: 116/255, blue: 117/255, alpha: 100)))
                }
                Text("Name of service:")
                    .font(.body)
                    .fontWeight(.bold)
                    .multilineTextAlignment(.center)
                    .foregroundColor( Color(uiColor: UIColor(red: 133/255, green: 116/255, blue: 117/255, alpha: 100)))
                if #available(iOS 16.0, *) {
                    Text("Bath & Full Haircut")
                        .padding()
                        .font(.body)
                        .fontWeight(.regular)
                        .multilineTextAlignment(.center)
                        .foregroundColor( Color(uiColor: UIColor(red: 133/255, green: 116/255, blue: 117/255, alpha: 100)))
                } else {
                    // Fallback on earlier versions
                    Text("Bath & Full Haircut")
                        .padding()
                        .font(.body)
                    //                                    .fontWeight(.regular)
                        .multilineTextAlignment(.center)
                        .foregroundColor( Color(uiColor: UIColor(red: 133/255, green: 116/255, blue: 117/255, alpha: 100)))
                }
                Text("Date of service:")
                    .font(.body)
                    .fontWeight(.bold)
                    .multilineTextAlignment(.center)
                    .foregroundColor( Color(uiColor: UIColor(red: 133/255, green: 116/255, blue: 117/255, alpha: 100)))
                if #available(iOS 16.0, *) {
                    Text("21 Dec 2022")
                        .padding()
                        .font(.body)
                        .fontWeight(.regular)
                        .multilineTextAlignment(.center)
                        .foregroundColor( Color(uiColor: UIColor(red: 133/255, green: 116/255, blue: 117/255, alpha: 100)))
                } else {
                    // Fallback on earlier versions
                    Text("21 Dec 2022")
                        .padding()
                        .font(.body)
                    //                                    .fontWeight(.regular)
                        .multilineTextAlignment(.center)
                        .foregroundColor( Color(uiColor: UIColor(red: 133/255, green: 116/255, blue: 117/255, alpha: 100)))
                }
                Text("Time of service:")
                    .font(.body)
                    .fontWeight(.bold)
                    .multilineTextAlignment(.center)
                    .foregroundColor( Color(uiColor: UIColor(red: 133/255, green: 116/255, blue: 117/255, alpha: 100)))
                if #available(iOS 16.0, *) {
                    Text("5:00 PM")
                        .padding()
                        .font(.body)
                        .fontWeight(.regular)
                        .multilineTextAlignment(.center)
                        .foregroundColor( Color(uiColor: UIColor(red: 133/255, green: 116/255, blue: 117/255, alpha: 100)))
                } else {
                    // Fallback on earlier versions
                    Text("5:00 PM")
                        .padding()
                        .font(.body)
                    //                                    .fontWeight(.regular)
                        .multilineTextAlignment(.center)
                        .foregroundColor( Color(uiColor: UIColor(red: 133/255, green: 116/255, blue: 117/255, alpha: 100)))
                }
                Button {
                    print("s")
                }label: {
                    NavigationLink(destination:Hi(product:product)){
                        Text ("Done")
                            .font(.title)
                            .fontWeight(.semibold)
                            .foregroundColor(Color.white)
                            .padding(.top, 340.0)
                        
                        
                        
                    }
//                                                .buttonStyle(GrowingButton())
                }
            }
            .ignoresSafeArea()
        }.padding()
            .ignoresSafeArea()
    }
}

          


struct Hajar_Previews: PreviewProvider {
    static var previews: some View {
        AppointmentDetails(product: productList[0])
//        ServiceDetails()
//            .navigationTitle("Appointment Details")
    }
}

 
struct GrowingButton: ButtonStyle {
    
    func makeBody(configuration: Configuration) -> some View {
        configuration.label
            .padding()
            .background(Color(uiColor: UIColor(red: 242/255, green: 178/255, blue: 99/255, alpha: 100)))
            .foregroundColor(.white)
            .clipShape(Capsule())
            .scaleEffect(configuration.isPressed ? 1.2 : 1)
            .animation(.easeOut(duration: 0.2), value: configuration.isPressed)
        
    }
    
}

