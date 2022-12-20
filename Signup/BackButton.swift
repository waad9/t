//
//  BackButton.swift
//  Kitty
//
//  Created by Milah Alfaqeeh  on 18/12/2022.
//

import SwiftUI

struct BackButton: View {
    
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    
    var body: some View {
        VStack {
            Button(action: {
                self.presentationMode.wrappedValue.dismiss()
            }) {
                Image(systemName: "chevron.backward")
                    .resizable()
                    .frame(width: 20, height: 35)
                    .foregroundColor(Color("MyGreen"))
                    //.bold()
                
                    
                        
                
                
                  
            }
            .navigationBarHidden(true)
            
        }
     
    }
    
    struct BackButton_Previews: PreviewProvider {
        static var previews: some View {
            BackButton()
        }
    }
}
