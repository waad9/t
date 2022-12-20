//
//  ProductRow.swift
//  Kitty
//
//  Created by Milah Alfaqeeh  on 17/12/2022.
//

import SwiftUI

struct ProductRow: View {
    @EnvironmentObject var cartManager: CartManager
    @State var numberOfProduct = 1
    var product: Product
    
    var body: some View {
        HStack(spacing: 20){
            Image(product.image)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 50)
            
            VStack(alignment: .leading, spacing: 10){
                Text(product.name)
                    .foregroundColor(Color("MyBrown"))
                    .bold()
                    .font(.system(size: 12.6))
                
                Text("SAR\(product.price*numberOfProduct)")
                    .foregroundColor(Color("MyBrown"))
                    .bold()
                    .font(.system(size: 12.7))
            }
        Spacer()
            
         //   productCount(ProductCount:$numberOfProduct, product: product)
                
            
            Image(systemName: "trash")
                .foregroundColor(.red)
                .onTapGesture {
                    cartManager.removeFromCart(product: product)
                }
        }
        .padding(.horizontal)
        .frame(maxWidth: .infinity, alignment: .leading)
    }
}

struct ProductRow_Previews: PreviewProvider {
    static var previews: some View {
        ProductRow(product: productList[3])
            .environmentObject(CartManager())
    }
}
