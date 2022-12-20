//
//  Con.payment.swift
//  Signup
//
//  Created by Raniyah Alotaibi on 26/05/1444 AH.
//

import SwiftUI

struct Con_payment: View {
    var body: some View {
       
        ZStack {
            
            Image("Payment")
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(minWidth: 0, maxWidth: .infinity)
                .edgesIgnoringSafeArea(.all)
           
            VStack
            {
                Image("Second_challengeKitty_-removebg-preview")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width:250, height: 200)
                    .padding(-50)

                Text("Thank you!")
                    .font(.title)
                    .fontWeight(.bold)
                    .multilineTextAlignment(.center)
                Text("Your payment is approved.")
                    .multilineTextAlignment(.center)
            }
            
            .foregroundColor(Color(red: 0.593, green: 0.539, blue: 0.545))
        }
        
    }
}
struct Con_payment_Previews: PreviewProvider {
    static var previews: some View {
        Con_payment()
    }
}
