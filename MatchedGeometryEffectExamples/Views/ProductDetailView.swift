//
//  ProductDetailView.swift
//  MatchedGeometryEffectExamples
//
//  Created by Harun Aydın on 31.07.2025.
//

import SwiftUI

import SwiftUI

struct ProductDetailView: View {
    var product: Product
    var namespace: Namespace.ID
    @Binding var show: Bool
    @Binding var selectedProduct: Product?

    var body: some View {
        ZStack(alignment: .topTrailing) {
            RoundedRectangle(cornerRadius: 30)
                .fill(product.bgColor.gradient)
                .matchedGeometryEffect(id: product.id, in: namespace)
                .ignoresSafeArea()
                .shadow(radius: 20)

            VStack(spacing: 16) {
                Spacer()
                Image(systemName: product.imageName)
                    .resizable()
                    .scaledToFit()
                    .frame(height: 120)
                    .foregroundColor(.white)

                Text(product.title)
                    .font(.largeTitle.bold())
                    .foregroundColor(.white)

                Text(product.subtitle)
                    .font(.title3)
                    .foregroundColor(.white.opacity(0.8))
                Spacer()
            }

            Button {
                withAnimation(.spring(response: 0.5, dampingFraction: 0.8)) {
                    show = false
                    DispatchQueue.main.asyncAfter(deadline: .now() + 0.3) {
                        selectedProduct = nil
                    }
                }
            } label: {
                Image(systemName: "xmark.circle.fill")
                    .font(.title)
                    .foregroundColor(.white.opacity(0.9))
                    .padding()
            }
        }
    }
}

#Preview {
    ProductDetailView(
        product: demoProducts[0],
        namespace: Namespace().wrappedValue,
        show: .constant(true),
        selectedProduct: .constant(demoProducts[0])
    )
}
