//
//  ContentView.swift
//  KeyframeTrackExample
//
//  Created by Harun Aydın on 24.07.2025.
//

import SwiftUI

struct ProductCardAnimation: View {
    @Namespace private var namespace
    @State private var selectedProduct: Product? = nil
    @State private var showDetail = false

    var body: some View {
        ZStack {
            ScrollView {
                VStack(spacing: 30) {
                    ForEach(demoProducts) { product in
                        ProductCardView(product: product, namespace: namespace)
                            .onTapGesture {
                                withAnimation(.spring(response: 0.5, dampingFraction: 0.8)) {
                                    selectedProduct = product
                                    showDetail = true
                                }
                            }
                    }
                }
                .padding(.top, 60)
            }

            if let product = selectedProduct, showDetail {
                ProductDetailView(
                    product: product,
                    namespace: namespace,
                    show: $showDetail,
                    selectedProduct: $selectedProduct
                )
                .zIndex(1)
            }
        }
    }
}

#Preview {
    ProductCardAnimation()
}

