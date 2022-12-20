//
//  productCount.swift
//  Kitty
//
//  Created by Milah Alfaqeeh  on 17/12/2022.
//

import SwiftUI

struct productCount: View {
    @Binding var ProductCount: Int
    @EnvironmentObject var cartManager: CartManager
    
    var product: Product
    var body: some View {
        HStack(spacing: 20){
            Button {
                if ProductCount < 1 {
                   
                    cartManager.removeFromCart(product: product)
                
                } else {
                    ProductCount -= 1
               
                  
                }
            } label: {
                Image(systemName: "minus.circle")
                    .foregroundColor(Color("MyYellow"))
            }
            
            Text("\(ProductCount)")
                .foregroundColor(Color("MyBrown"))
            
            Button{
                if ProductCount >= 1 {
                    
                    ProductCount += 1
                
              //  cartManager.addToCart(product: product)
                
                }else {
                    cartManager.addToCart(product: product)
                }
                 
            } label: {
                Image(systemName: "plus.circle")
                    .foregroundColor(Color("MyYellow"))
            }
            

        }
    }
}

struct productCount_Previews: PreviewProvider {
    static var previews: some View {
        productCount(ProductCount: .constant(0),product: productList[0])
            .environmentObject(CartManager())
    }
}
