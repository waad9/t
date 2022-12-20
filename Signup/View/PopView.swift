//
//  PopView.swift
//  Kitty
//
//  Created by Milah Alfaqeeh  on 17/12/2022.
//

import SwiftUI

struct PopView: View {
    @EnvironmentObject var cartManager: CartManager
    @State private var showPopUp = false
    var product: Product
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    var body: some View {
      
        NavigationView {
            ZStack {
                VStack{
                    Text(product.name)
                        .bold()
                       .font(.title2)
                        .foregroundColor(Color("MyBrown"))
                        .padding(.top,-9)
                        
                    Image(product.image)
                        .resizable()
                        .frame(width: 250,height: 225)
                    
                        .offset(y: -15)
                        .padding(.bottom, -115)
                    VStack {
                        
                        GeometryReader{geo in
                            
                            VStack(alignment: .leading){
                                
                                
                                AddtomycartTop(product: product)
                             //   AddtomycartMiddle(numberOfProduct: 1, product: product)
                                
                                
                                
                            }}
                        Button(action: {
                            self.showPopUp = true
                            cartManager.addToCart(product: product)
                        }, label: {
                            AddtomycartLast(product: product)
                          
                                .padding(.bottom,40)
                            
                        })
                    }.background(Color("LightYellow"))
                        .clipShape(Rounded())
                        .overlay(
                            RoundedRectangle(cornerRadius: 35)
                                .stroke(Color("MyYellow"), lineWidth: 2))
                        .padding(.top,150)
                        .padding(.bottom,-40)
                }
               
                    if $showPopUp.wrappedValue {
                        ZStack {
                            PopView(product: product)
                               
                            .blur(radius: 12)

                          
                           
                            ZStack {
                                RoundedRectangle(cornerRadius: 15)
                                    .fill(Color(.white))
                                    .frame(width: 360, height: 260)
                                
                                    .overlay(
                                        RoundedRectangle(cornerRadius: 15)
                                            .stroke(Color("MyYellow"), lineWidth: 3)
                                        
                                    ) .padding(.top,50)
                                VStack {
                                    PopButtons(product: product)
                                     
                                    
                                }.padding()
                                 //   .background(Blur())
                                   
                                    
                            }
                           
                         
                        }
                        
                     

                    }
                   
                  
                
            }
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
        }
        }
    }


struct PopView_Previews: PreviewProvider {
    static var previews: some View {
        PopView(product: productList[0])
            .environmentObject(CartManager())
    }
}


struct AddtomycartTop: View {
        var product: Product
        var body: some View {
            VStack(alignment: .center){
                Text(product.name)
                    .font(.title)
                    .bold()
                    .foregroundColor(Color("MyBrown"))
                    .padding()
                Text(product.description)
                    .font(.title3)
                    .foregroundColor(Color("MyBrown"))
                    .padding()
            }.padding()
            }
    
}



struct   omycartMiddle: View {
    @State var numberOfProduct = 1
    var product: Product
    var body: some View {
        HStack{
            
            Text("SAR \(product.price)")
                .font(.title2)
                .bold()
                .foregroundColor(Color("MyBrown"))
                .padding()
            
               Spacer()
            productCount(ProductCount:$numberOfProduct, product: product)
                .padding(.horizontal)
           
        }
    }
}


struct AddtomycartLast: View {
    //    @State private var isADDTOCART = false
   // @EnvironmentObject var cartManager: CartManager
    var product: Product
    @State private var showPopUp = false
    var body: some View {
        
        ZStack{
    
                VStack {
                    HStack (spacing: 6){
                        Text("ADD TO CART".uppercased())

                        Image(systemName: "cart").resizable()
                            .frame(width: 32, height: 36)

                    }.frame(width: 250, height: 25)
                        .font(.headline)
                        .foregroundColor(Color(.white))
                        .padding()
                }

            .background(Color("MyYellow"))
                .cornerRadius(14)
                .frame(maxWidth: .infinity)
        }
        
    }
}




struct Rounded : Shape {
    
    func path(in rect: CGRect) -> Path {
        
        let path = UIBezierPath(roundedRect: rect, byRoundingCorners: [.topLeft, .topRight], cornerRadii: CGSize(width: 40, height: 40))
        
        return Path(path.cgPath)
    }
}


