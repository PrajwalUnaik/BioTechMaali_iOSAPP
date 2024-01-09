//
//  Detailed PlantView.swift
//  BioTechMaali
//
//  Created by Prajwal U on 07/01/24.
//

import SwiftUI

struct Detailed_PlantView: View {
    @State private var isTapped = false
    @State private var scale: CGFloat = 1.0
    @State private var angle: Double = 0.0
    
    var body: some View {
        
        ZStack {
            
            //Color(.minty).ignoresSafeArea()
            
            VStack {
                Spacer()
                HStack(spacing: 1) {
                    Text("")
                        .padding()
                    Text("New on ")
                    Text("BioTechMaali").foregroundColor(.olive)
                    Spacer()
                }.font(.title2)
                Spacer()
                
                Image("Display_1")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 250,height: 250,alignment: .center)
                
                Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit. Tortor sed tellus fusce laoreet facilisi urna imperdiet. Quis potenti ut odio auctor mollis enim scelerisque. Et, congue ")
                    .fontWeight(.thin)
                    .multilineTextAlignment(/*@START_MENU_TOKEN@*/.leading/*@END_MENU_TOKEN@*/)
                    .padding().padding(.horizontal)
                
                ZStack{
                    RoundedRectangle(cornerRadius: 40)
                        .clipShape(RoundedRectangle(cornerRadius: 20))
                        .frame(width: 82,height: 42)
                        .foregroundColor(.textBack)
                    
                    RoundedRectangle(cornerRadius: 40)
                        .frame(width: 80,height: 40)
                        .foregroundColor(.textBack)
                    
                    
                    HStack {
                        Image(systemName: "drop")
                        Text((String(Int.random(in: 100...600))) + " ml").font(.caption)
                    }.foregroundColor(.white)
                }.padding(.vertical)
                
                VStack {
                    ZStack {
                        Circle().frame(width: 70)
                        Image(systemName: "drop").font(.title2)
                            .foregroundColor(.white)
                    }
                    Text("water plant".uppercased()).font(.caption).fontWeight(.regular)
                }.foregroundColor(.textBack)
                    .padding(.horizontal)
            }
        }
        
        
        
        
    }
}

#Preview {
    Detailed_PlantView().previewLayout(.sizeThatFits)
}
