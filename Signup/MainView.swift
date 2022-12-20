//
//  MainView.swift
//  Kitty
//
//  Created by Milah Alfaqeeh  on 18/12/2022.
//
import SwiftUI

struct MainView: View {
    @EnvironmentObject var cartManager: CartManager
    @State var badgeCount: Int = 1
    var badgePosition: CGFloat = 2
    var tabsCount: CGFloat = 3
    var product: Product
    var body: some View {
        GeometryReader { geometry in
            ZStack(alignment: .bottomLeading) {
                // TabView
                TabView {
                    Hi(product:product)
                        .tabItem {
                            Image(systemName: "pawprint.circle.fill")
                            Text("KITTY")
                        }.tag(0)
                    
                    CartPage(product: product)
                        .tabItem {
                            Image(systemName: "cart")
                            Text("Cart")
                        }.tag(1)
                    DSD()
                        .tabItem {
                            Image(systemName: "person.crop.circle.fill")
                            Text("Profile")
                        }.tag(2)
                }
                
                // Badge View
                ZStack {
                    Circle()
                        .foregroundColor(.pink)
                    
                    Text("\(self.cartManager.products.count)")
                        .foregroundColor(.white)
                        .font(Font.system(size: 12))
                }
                .frame(width: 15, height: 15)
                .offset(x: ( ( 2 * self.badgePosition) - 0.95 ) * ( geometry.size.width / ( 2 * self.tabsCount ) ) + 2, y: -25)
                .opacity(self.cartManager.products.count == 0 ? 0 : 1.0)
            }
            .accentColor(Color("MyYellow"))
            .background(.thinMaterial)
           
        }
    }
}
struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView(product: productList[0])
            .environmentObject(CartManager())
    }
}
