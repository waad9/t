//
//  Product.swift
//  Kitty
//
//  Created by Milah Alfaqeeh  on 17/12/2022.
//

import Foundation

struct Product: Identifiable {
    var id = UUID()
    var name: String
    var image: String
    var description:String
    var price: Int
    var quantity: Int
}

var productList = [ Product(name: "Tuna With Shrimp", image: "112", description: "Purina Fancy Feast Royale Tuna Shrimp Wet Cat Food 85g", price: 7, quantity: 0),//.5
                    Product(name: "Nutram", image: "2", description: "Nutram Cat Dry Fod Sound Balanced Wellness for Kitten 54kg ", price: 45, quantity: 0),
                    Product(name:"Farmina", image: "3", description: "Farmina Cat Dry Food Ocean for Adult with Cod and Orange 1.5kg ", price: 73, quantity: 0),
                    Product(name: "Jelly With Chicken", image: "4", description: "Purina Wet Cat Food Felix As Good As It Looks With Chicken in", price: 3, quantity: 0),//.95
                    Product(name: "Sheba", image: "5", description: "Sheba Fillets Selection Cat Food 4 x 60g ", price: 29, quantity: 0),//.95
                    Product(name: "Chicken with Lamb", image: "6", description: "Adult Cat Chicken with Extra Lamb Made with Natural Ingredients Grain Free 80% Chicken Protein 7.5g", price: 23, quantity: 0),
                    Product(name: "Signature Salmon", image: "7", description: "Signature Salmon Dry Food for Cat 1.2kg", price: 34, quantity: 0),
                    Product(name: "Applaws", image: "8", description: "Applaws Wet Food Canned Kitten Chicken Flavor 70g", price: 5, quantity: 0),//.77
                    Product(name: "Chicken Slices", image: "9", description: "Schesir Chicken Thin Slices In Grravy Pounch 100g", price: 6, quantity: 0),//.77
                    Product(name: "Tuna with anchovy", image: "10", description: "Applause Cat Wet Food Tuna fillet with whole anchovy in broth Pounch 70 gm", price: 79, quantity: 0),
                    Product(name: "Royal Canin", image: "11", description: "Royal Canin Cat Wet Food for First Age Mother and Baby Cat Can 195 gm ", price: 16, quantity: 0)]

