

import SwiftUI
import UIKit



struct MyplantsView: View {
    var body: some View {
        /// A vertical ScrollView.
        
        ScrollView(.vertical, showsIndicators: false) {
            /// A VStack
            VStack {
                let randomNo = String(Int.random(in: 1...6)) // Generate a new random plant
                VStack {
                    HStack(spacing: 1) {
                        Text("")
                            .padding()
                        Text("My Plants at ")
                        Text("BioTechMaali").foregroundColor(.olive)
                        Spacer()
                    }.font(.title2)
                    
                    
                    
                    
                    VStack {
                        // NavigationLink to HomeView
                        NavigationLink(destination: Detailed_PlantView()) {
                            HCardview(imageCard: "plant_\(String(Int.random(in: 1...6)))" ,isNew: false)
                        }
                        NavigationLink(destination: Detailed_PlantView()) {
                                HCardview(imageCard: "plant_\(String(Int.random(in: 1...6)))" ,isNew: false)
                            }
                        NavigationLink(destination: Detailed_PlantView()) {
                                HCardview(imageCard: "plant_\(String(Int.random(in: 1...6)))" ,isNew: false)
                            }
                        NavigationLink(destination: Detailed_PlantView()) {
                                HCardview(imageCard: "plant_\(String(Int.random(in: 1...6)))" ,isNew: false)
                            }
                        NavigationLink(destination: Detailed_PlantView()) {
                                HCardview(imageCard: "plant_\(String(Int.random(in: 1...6)))" ,isNew: false)
                            }
                        NavigationLink(destination: Detailed_PlantView()) {
                                HCardview(imageCard: "plant_\(String(Int.random(in: 1...6)))" ,isNew: false)
                            }
                        NavigationLink(destination: Detailed_PlantView()) {
                                HCardview(imageCard: "plant_\(String(Int.random(in: 1...6)))" ,isNew: false)
                            }
                    }
                }
            }
        }
    }
}


#Preview {
    MyplantsView()
}
