
//  SignupApp.swift
//  Signup
//
//  Created by Raniyah Alotaibi on 19/05/1444 AH.


import SwiftUI

@main
struct SignupApp: App {
    @StateObject var cartManager = CartManager()
    var body: some Scene {
        WindowGroup {
           Splash(product: productList[0])
                .environmentObject(cartManager)
        }
    }
}
