////
////  TabBar .swift
////  t2
////
////  Created by وعد عياد الرويلي on 19/05/1444 AH.
////
//
//
//
//import SwiftUI
//
//struct TabBar_: View {
//
//
//
//
//    @State var selection = 0
//
//
//    var body: some View {
//
//        //tab viwe
//
//
//        TabView(selection: $selection){
//
//
//            SwiftUIView().tabItem{Image(systemName: "pawprint.circle.fill")
//                Text("KITTY")
//            }.tag(1)
//
//            CartPage().tabItem{Image(systemName: "cart")
//                Text("Cart")
//            }.tag(2)
//
//            SwiftUIView().tabItem{Image(systemName: "person.circle.fill")
//                Text("Profile")
//            }
//        }.accentColor(Color("Color"))
//
//         //
//
//    }
//}
//
//
//        struct TabBar__Previews: PreviewProvider {
//            static var previews: some View {
//                TabBar_()
//            }
//        }
//
//
//
