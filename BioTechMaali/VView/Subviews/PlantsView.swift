//
//  PlantsView.swift
//  BioTechMaali
//
//  Created by Prajwal U on 06/01/24.
//

import SwiftUI

struct PlantsView: View {
    
    @State var trigger = 0
    var body: some View {
        VStack {
            Image(systemName: "wifi.exclamationmark")
                .symbolEffect(.bounce, value: 5)
        }
        
    }
}

#Preview {
    PlantsView()
}
