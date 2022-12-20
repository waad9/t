//
//  CartPage.swift
//  Kitty
//
//  Created by Milah Alfaqeeh  on 17/12/2022.
//

import SwiftUI

struct CartPage: View {
   @EnvironmentObject var cartManager: CartManager
    var product: Product
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    var body: some View {
        NavigationView {
            
            ScrollView{ VStack{Text("My Cart ")
                    .font(.largeTitle)
                    .bold()
                    .foregroundColor(Color("MyGreen"))
                .padding(.top,-10)}
                if cartManager.products.count > 0 {
                      ForEach(cartManager.products, id: \.id) {
                        product in ProductRow(product: product)}
                    
                    VStack {
                        OrderTotalDetails(product: product)
                       
                    }
                } else{
                    Text("Your cart is empty")
                        .foregroundColor(Color("MyBrown"))
                }
        
                
            }
   // .navigationTitle(Text("My Cart"))
            .navigationBarItems(leading: Button(action: {
                self.presentationMode.wrappedValue.dismiss()
            }) {
                Image(systemName: "chevron.backward")
                    .resizable()
                    .frame(width: 18, height: 29)
                    .foregroundColor(Color("MyGreen"))
                   // .bold()
                    .padding(.top,20)
                 
            })
            MainView(product: product)
        }
    
  
    }
}

struct CartPage_Previews: PreviewProvider {
    static var previews: some View {
        CartPage(product: productList[0])
            .environmentObject(CartManager())
        
    }
}


struct OrderTotalDetails: View {
    @EnvironmentObject var cartManager: CartManager
    var product: Product
    var body: some View {
        NavigationView{
            VStack {
                
    //            HStack(alignment: .center, spacing: 195){
    //                Text("Subtotal")
    //                    .foregroundColor(Color("MyBrown"))
    //                //  Spacer()
    //                Text("SAR\(cartManager.total).00")
    //                    .foregroundColor(Color("MyBrown"))
    //                //Spacer()
    //            }
    //
    //            HStack(alignment: .center, spacing: 180){
    //                Text("Shipping")
    //                    .foregroundColor(Color("MyBrown"))
    //                //   Spacer()
    //                Text("SAR 15.00")
    //                    .foregroundColor(Color("MyBrown"))
    //                //  Spacer()
    //            }.padding()
                Divider()
                HStack(alignment: .center, spacing: 180){
                    Text("TOTAL")
                        .foregroundColor(Color("MyBrown"))
                        .bold()
                    // Spacer()
                    Text("SAR\(cartManager.total).00")
                        .foregroundColor(Color("MyBrown"))
                        .bold()
                        .padding()
                    
                }
              
                Pay()
            }
            .padding(.all)
            
        }
    }
}


struct Pay: View {
    @State private var isPay = false
    var body: some View {
        ZStack{
            Button(action: {
                isPay  = true
            }) {
                HStack (spacing: 6){
                    Text("BUY".uppercased())
                        .font(.title3)
                    
                    
                    
                }.frame(width: 250, height: 25)
                    .font(.headline)
                    .foregroundColor(Color(.white))
                    .padding()
                
            }.background(Color("MyYellow"))
                .cornerRadius(10)
                .frame(maxWidth: .infinity)
        }
    }
}
