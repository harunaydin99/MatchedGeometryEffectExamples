//
//  Product.swift
//  MatchedGeometryEffectExamples
//
//  Created by Harun Aydın on 31.07.2025.
//

import Foundation

import SwiftUI

struct Product: Identifiable {
    let id = UUID()
    let title: String
    let subtitle: String
    let imageName: String
    let bgColor: Color
}

let demoProducts: [Product] = [
    Product(title: "AirPods Max", subtitle: "Wireless Headphone", imageName: "headphones", bgColor: .blue),
    Product(title: "iPhone 15 Pro", subtitle: "Titanium", imageName: "iphone.gen3", bgColor: .black),
    Product(title: "Apple Watch", subtitle: "Serie 9", imageName: "applewatch", bgColor: .gray)
]
