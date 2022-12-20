//
//  PopButtons.swift
//  Kitty
//
//  Created by Milah Alfaqeeh  on 17/12/2022.
//

import SwiftUI

struct PopButtons: View {
    @State private var isMyCart = false
    @State private var isStore = false
    
    var product: Product
    var body: some View {
        VStack(alignment:.center ) {
            Text("Selcet one options :")
                .font(.title)
                .foregroundColor(Color("MyBrown"))
            //  .bold()
            
            
            
            Button(action: {
                isMyCart = true
            }, label: {
                Text("Check Out".uppercased())
                    .padding()
                    .frame(width: 190, height: 50)
                    .background(Color("MyYellow").cornerRadius(10))
                    .foregroundColor(Color(.white))
                    .font(.headline)
            })
            .overlay(
                RoundedRectangle(cornerRadius:10 )
                    .stroke(Color(.white), lineWidth: 2))
            .padding()
            
            Button(action: {
               
                isStore = true
            }, label: {
                Text("Continue to shopping".uppercased())
                    .padding()
                    .frame(width: 190, height: 50)
                
                    .background(Color(.white).cornerRadius(10))
                    .foregroundColor(Color("MyYellow"))
                
                    .font(.headline)
            })
            
            .overlay(
                RoundedRectangle(cornerRadius:10 )
                    .stroke(Color("MyYellow"), lineWidth: 2))
            
            
            
        }
        .fullScreenCover(isPresented: $isMyCart) {
            CartPage(product: product)}

        .fullScreenCover(isPresented: $isStore) {
            StoreView(product: product)}
        
        
    }
}
struct PopButtons_Previews: PreviewProvider {
    static var previews: some View {
        PopButtons(product: productList[0])
    }
}
func getPrice(value: Float)->String{
   let format = NumberFormatter()
    format.numberStyle = .currency
    return format.string(from: NSNumber(value: value)) ?? ""
}
