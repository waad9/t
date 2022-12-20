//
//  StoreView.swift
//  Kitty
//
//  Created by Milah Alfaqeeh  on 18/12/2022.
//

import SwiftUI

struct StoreView: View {
    @EnvironmentObject var cartManager: CartManager
    var product: Product
    var columns = [GridItem(.adaptive(minimum: 150), spacing:20)]

    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    @State var searchText = ""
    var body: some View {
        NavigationView{
            ScrollView{
//                VStack {
//                    Text("Aleaf Shop ")
//                        .font(.largeTitle)
//                        .bold()
//                        .foregroundColor(Color("MyGreen"))
//                        .padding(.bottom,-10)
//                        .padding(.top,-17)
//
//
//                }
                  
                
                LazyVGrid(columns: columns, spacing: 20) {
                    ForEach(searchResults, id: \.id ) { Product in
                        ProductCard(product: Product)
                            .environmentObject(cartManager)
                        
                     
                    }
                   
                }
                .searchable(text: $searchText)
                MainView(product: product)
                
            }  .navigationBarTitleDisplayMode(.inline)
              
                .toolbar { // <2>
                    ToolbarItem(placement: .principal) { // <3>
                        VStack {
                            Text("Aleaf Shop")
                           .foregroundColor(Color("MyGreen"))
                           .bold()
                           .font(.largeTitle)

                        }.padding(.bottom,20)

                    }
                }
           
            .navigationBarItems(leading: Button(action: {
                self.presentationMode.wrappedValue.dismiss()}) {
                Image(systemName: "chevron.backward")
                    .resizable()
                    .frame(width: 18, height: 29)
                    .foregroundColor(Color("MyGreen"))
                   // .bold()
                    .padding(.bottom,20)
                 
            })
          
        }.padding(.top,40)
      
    }
    var searchResults: [Product] {
           if searchText.isEmpty {
               return productList
           } else {
               return productList.filter { $0.name.contains(searchText) }
           }
       }
}

struct StoreView_Previews: PreviewProvider {
    static var previews: some View {
        StoreView(product: productList[0])
            .environmentObject(CartManager())
    }
}
