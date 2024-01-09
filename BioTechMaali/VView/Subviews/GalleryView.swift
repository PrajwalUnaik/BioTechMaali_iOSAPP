//
//  GalleryView.swift
//  BioTechMaali
//
//  Created by Prajwal U on 06/01/24.
//

import SwiftUI

struct GalleryView: View {
    let colors: [Color] = [.red, .green, .blue, .orange, .pink, .purple, .yellow, .gray]
    var body: some View {
        ScrollView(.vertical, showsIndicators: true) {
            /// A VStack containing colored rectangles.
            VStack(spacing: 20) {
                ForEach(colors, id: \.self) { color in
                    Rectangle()
                        .fill(color)
                        .frame(height: 200)
                        .cornerRadius(15)
                }
            }
            .padding()
        }
    }
}

#Preview {
    GalleryView()
}
