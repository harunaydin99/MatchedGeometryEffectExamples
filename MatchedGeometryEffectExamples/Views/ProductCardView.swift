//
//  ProductCardView.swift
//  MatchedGeometryEffectExamples
//
//  Created by Harun Aydın on 31.07.2025.
//

import SwiftUI

struct ProductCardView: View {
    var product: Product
    var namespace: Namespace.ID

    var body: some View {
        ZStack(alignment: .bottomLeading) {
            RoundedRectangle(cornerRadius: 25)
                .fill(product.bgColor.gradient)
                .matchedGeometryEffect(id: product.id, in: namespace)
                .frame(height: 220)
                .shadow(radius: 10)

            VStack(alignment: .leading, spacing: 4) {
                Text(product.title)
                    .font(.title2.bold())
                Text(product.subtitle)
                    .font(.subheadline)
                    .foregroundColor(.white.opacity(0.8))
            }
            .foregroundColor(.white)
            .padding()
        }
        .padding(.horizontal)
    }
}

#Preview {
    ProductCardView(product: demoProducts[0], namespace: Namespace().wrappedValue)
}
