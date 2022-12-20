//
//  Splash.swift
//  Signup
//
//  Created by Raniyah Alotaibi on 26/05/1444 AH.
//

import SwiftUI

struct Splash: View {
    @State private var isActive = false
    @State private var size = 0.5
    @State private var opacity = 0.4
    var product: Product
    
    var body: some View {
        if isActive {
            MainView(product:product)
        }
        else{
            ZStack{Image("LOGO-KITTY ")
                    .scaledToFill()
            }.edgesIgnoringSafeArea(.all)
            .scaleEffect(size)
            .opacity(opacity)
            .onAppear{withAnimation(.easeIn(duration: 1.2))
                {
                    self.size = 0.5
                    self.opacity = 1.8
                }
            }
            
            .onAppear{
                DispatchQueue.main.asyncAfter(deadline: .now() + 6.0){
                    self.isActive = true
                    
                }}
        }
    }
}
struct Splash_Previews: PreviewProvider {
    static var previews: some View {
        Splash(product: productList[0])
    }
}
