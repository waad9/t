//
//  StorePage.swift
//  Kitty
//
//  Created by Milah Alfaqeeh  on 17/12/2022.
//

import SwiftUI

struct StorePage: View {
    @EnvironmentObject var cartManager: CartManager
    var product: Product
    var columns = [GridItem(.adaptive(minimum: 150), spacing:20)]

    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    @State var searchingFor = ""
    var body: some View {
        NavigationView {
            
            ScrollView {
                VStack {
                    Text("Aleaf Shop ")
                        .font(.largeTitle)
                        .bold()
                        .foregroundColor(Color("MyGreen"))
                        .padding(.bottom,-10)
                        .padding(.top,-17)
                    
                    HStack {
                        search_bar_tool()
                            .background(Color("light"))
                            .cornerRadius(9.0)
                        
                    }
                }
                
                
                
                LazyVGrid(columns: columns, spacing: 20) {
                    ForEach(productList, id: \.id ) { Product in
                        ProductCard(product: Product)
                            .environmentObject(cartManager)
                        
                    }
                }
                .padding()
            }
            //            .navigationTitle(Text("Aleaf Shop"))
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
           //     .navigationBarHidden(true)
                                
                            
                                }
        }
    
}

struct StorePage_Previews: PreviewProvider {
    static var previews: some View {
        StorePage(product: productList[0])
            .environmentObject(CartManager())
    }
}



struct search_bar_tool: View {
@State private var searchText = ""
var body: some View {

    VStack{
        NavigationStack {
          
        }
        .searchable(text: $searchText)
    }
    .frame(height: 100)
}
}

