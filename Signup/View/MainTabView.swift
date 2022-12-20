//
//  MainTabView.swift
//  Kitty
//
//  Created by Milah Alfaqeeh  on 17/12/2022.
//

import SwiftUI

struct MainTabView: View {
    @State private var selectedIndex = 0
    @EnvironmentObject var cartManager: CartManager
    
    var product: Product
    var body: some View {
        NavigationView{
            TabView(selection: $selectedIndex){
                
                
                
                StorePage(product: product)
                    .onTapGesture {
                        self.selectedIndex = 0
                    }
                    .tabItem{
                        Image(systemName: "pawprint.circle.fill")
                        Text("KITTY")
                    }.tag(0)
                
                
                ////////
               
                    CartPage(product: product)
                                    .onTapGesture {
                        self.selectedIndex = 1
                    }
                    .tabItem{
                        Image(systemName: "cart")
                
                            Text("Cart")
                         
                
                       
                       
            
                    }.tag(1)
                
                //////////
                
                Profile()
                    .onTapGesture {
                        self.selectedIndex = 2
                    }
                    .tabItem{
                        Image(systemName: "person.crop.circle.fill")
                        Text("Profile")
                    }.tag(2)
                
            }
            .accentColor(Color("MyYellow"))
            .background(.thinMaterial)
        }
        
    }}

struct MainTabView_Previews: PreviewProvider {
    static var previews: some View {
        MainTabView(product: productList[0])
            .environmentObject(CartManager())
    }
}

