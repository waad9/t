//
//  AddToMyCart.swift
//  Kitty
//
//  Created by Milah Alfaqeeh  on 17/12/2022.
//

import SwiftUI

struct AddToMyCart: View {
    @EnvironmentObject var cartManager: CartManager
    var product: Product
    var body: some View {
        NavigationView{
            ZStack {
                VStack{
                    
                    Image(product.image)
                        .resizable()
                    //                           .frame(width:UIScreen.main.bounds.width, height: 360.0)
                        .frame(width: 250,height: 225)
                        .aspectRatio(1, contentMode: .fit)
                        .offset(y:-15)
                    
                   // .padding(.bottom, -115)
                    
                }.padding(.bottom,300)
                            
                    GeometryReader{geo in
                        
                        VStack(alignment: .leading){
                            
                            
                            AddtomycartTop(product: product)
                            AddtomycartMiddle(numberOfProduct: 1, product: product)
                            
                                                                    AddtomycartLast(product: product)
                                                                        .padding(.top,50)
                            
                        }}
                    .background(Color("LightYellow"))
                        .clipShape(Rounded())
                        .overlay(
                            RoundedRectangle(cornerRadius: 35)
                                .stroke(Color("MyYellow"), lineWidth: 2))
                        .padding(.top,350)
                        .padding(.bottom,-400)
                                 }
                    }
                .navigationTitle(Text(product.name))
            }
                            
        }
        
      
    


struct AddToMyCart_Previews: PreviewProvider {
    static var previews: some View {
        AddToMyCart(product: productList[0])
            .environmentObject(CartManager())

    }
}


struct Rounded : Shape {
    
    func path(in rect: CGRect) -> Path {
        
        let path = UIBezierPath(roundedRect: rect, byRoundingCorners: [.topLeft, .topRight], cornerRadii: CGSize(width: 40, height: 40))
        
        return Path(path.cgPath)
    }
}










