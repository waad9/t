//
//  SSS.swift
//  Signup
//
//  Created by Hajar Alruqi on 28/05/1444 AH.
//

import Foundation

import SwiftUI

struct SSS: View {
    
            @State private var searchText = ""
            var body: some View {
                
                VStack{
                    NavigationStack {
                     //   Text("Searching for \(searchText)")
                         //   .navigationTitle("Searchable Example")
                    }
                    .searchable(text: $searchText)
                }
                .frame(height: 200)
            }
        }

struct SSS_Previews: PreviewProvider {
    static var previews: some View {
        SSS()
    }
}
