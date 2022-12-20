//
//  ProductCard.swift
//  Kitty
//
//  Created by Milah Alfaqeeh  on 17/12/2022.
//

import SwiftUI

struct ProductCard: View {
    @EnvironmentObject var cartManager: CartManager
    @State private var isADDTOCART = false
 
    var product: Product
    
    var body: some View {
      
            ZStack(alignment: .center) {
                
                
             
                RoundedRectangle(cornerRadius: 40)
                    .fill(.white)
                                      .frame(width: 160, height: 155)
                                      
                                      .overlay(
                                          RoundedRectangle(cornerRadius: 10)
                                              .stroke(Color("MyYellow"), lineWidth: 1)
                                          
                                      ) .padding(.top)
       
                VStack(alignment: .center){
                    
                 
                        Button{
                               
                            isADDTOCART = true
                            
                    }label: {
                        
                        Image(product.image)
                            .resizable()
                        
                            .frame(width: 110 , height: 105 )
                            .scaledToFill()
                            .padding(.bottom,6)
                    }
                       
                    VStack(alignment: .center){
                        Text(product.name)
                            .foregroundColor(Color("MyBrown"))
                        
                            .bold()
                        
                        
                        Text("\(product.price) SAR")
                            .font(.caption)
                            .bold()
                            .foregroundColor(Color("MyGreen"))
                    }.padding(.bottom,6)
                    Button{
                      //  if product.quantity < 1 {
                      //      product.quantity  += 1
                            cartManager.addToCart(product: product)
                        
                  //  }
                       
                    } label: {
                        Image(systemName: "cart.badge.plus")
                            .padding(.leading,111)
                            .padding(.top,3)
                            .foregroundColor(Color("MyYellow"))
                     
                    }
                    
             
                .padding(.top,-28)
           
                
                

                        
                }
               
                
            }
            .fullScreenCover(isPresented: $isADDTOCART) {
               PopView(product: product)
            }
        }
     
        
    }


struct ProductCard_Previews: PreviewProvider {
    static var previews: some View {
        ProductCard(product: productList[0])
            .environmentObject(CartManager())
    }
}




struct productButton: View {
    var product: Product
    @State var isPopView = false
    var body: some View {
        Button(action: {
            
            isPopView = true
        }, label: {
            Image(product.image)
                .resizable()
            
                .frame(width: 90 , height: 110 )
                .scaledToFill()
        })
        .fullScreenCover(isPresented: $isPopView) {
            PopView(product: product)
        }
    }
}
