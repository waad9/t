//
//  CartManager.swift
//  Kitty
//
//  Created by Milah Alfaqeeh  on 17/12/2022.
//

import Foundation

class CartManager: ObservableObject {
    
    @Published var products: [Product] = []
    @Published  var total: Int = 0
   // @Published private(set) var numberOfProduct: Int = 1
  
    
    func addToCart(product: Product){
        
            products.append(product)
            total += Int(product.price)
        }
        
        func removeFromCart(product: Product) {
            products = products.filter {$0.id != product.id}
            
            if products.count == 0
            {
                //appande
            }
            
            total -= Int(product.price)
            
        }
    
    
    func  updateProduct(product: Product)
    {
      
        products = products.filter {$0.id == product.id}
       
        if products.count == 0
        {
            //appande
            products.append(product)
            total += Int(product.price)
        }
        else
        {
           
            
            if let row = products.firstIndex(where: {$0.id != product.id})
            {
                products[row].quantity = products[row].quantity+1
            }
         
            
            
            
        }
        
        
    }

        
        
    }

