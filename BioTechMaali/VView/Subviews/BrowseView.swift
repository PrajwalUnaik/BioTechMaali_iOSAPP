

import SwiftUI
import UIKit

struct BrowseView: View {
    var body: some View {
        /// A vertical ScrollView.

        ScrollView(.vertical, showsIndicators: false) {
            /// A VStack
            VStack {
                let randomNo = String(Int.random(in: 1 ... 6)) // Generate a new random plant
                VStack {
                    HStack(spacing: 1) {
                        Text("")
                            .padding()
                        Text("New on ")
                        Text("BioTechMaali").foregroundColor(.olive)
                        Spacer()
                    }.font(.title2)

                    ZStack {
                        HStack {
                            VStack {
                                NavigationLink(destination: MyplantsView()) {
                                    ZStack {
                                        Circle().frame(width: 70)
                                        Image(systemName: "tree")
                                            .font(.title2)
                                            .foregroundColor(.white)
                                    }
                                }
                                Text("My garden").font(.caption).bold()
                            }.foregroundColor(.olive)
                                .padding(.horizontal)

                            VStack {
                                ZStack {
                                    Circle().frame(width: 70)
                                    Image(systemName: "leaf").font(.title2)
                                        .foregroundColor(.white)
                                }
                                Text("My Plants").font(.caption).bold()
                            }.foregroundColor(.olive)
                            Spacer()
                        }.padding()
                    }

                    ZStack {
                        Image("leaves")
                            .resizable()
                            .scaledToFit()
                            .cornerRadius(20)
                            .frame(width: 350, height: 250)
                        Text("Create plans \n with Gardening App")
                            .padding(.top, 50)
                            .foregroundColor(.white)
                            .fontWeight(.black)
                            .font(.title)
                    }

                    HStack {
                        VStack {
                            // NavigationLink to HomeView
                            NavigationLink(destination: Detailed_PlantView()) {
                                CardView(imageCard: "plant_\(String(Int.random(in: 1 ... 6)))", isNew: false)
                            }
                        }

                        VStack {
                            // NavigationLink to HomeView
                            NavigationLink(destination: Detailed_PlantView()) {
                                CardView(imageCard: "plant_\(String(Int.random(in: 1 ... 6)))", isNew: false)
                            }
                        }
                    }
                    HStack {
                        VStack {
                            // NavigationLink to HomeView
                            NavigationLink(destination: Detailed_PlantView()) {
                                CardView(imageCard: "plant_\(String(Int.random(in: 1 ... 6)))", isNew: true)
                            }
                        }
                        VStack {
                            // NavigationLink to HomeView
                            NavigationLink(destination: Detailed_PlantView()) {
                                CardView(imageCard: "plant_\(String(Int.random(in: 1 ... 6)))", isNew: true)
                            }
                        }
                    }
                    HStack {
                        VStack {
                            // NavigationLink to HomeView
                            NavigationLink(destination: Detailed_PlantView()) {
                                CardView(imageCard: "plant_\(String(Int.random(in: 1 ... 6)))", isNew: false)
                            }
                        }
                        VStack {
                            // NavigationLink to HomeView
                            NavigationLink(destination: Detailed_PlantView()) {
                                CardView(imageCard: "plant_\(String(Int.random(in: 1 ... 6)))", isNew: true)
                            }
                        }
                    }
                    HStack {
                        VStack {
                            // NavigationLink to HomeView
                            NavigationLink(destination: Detailed_PlantView()) {
                                CardView(imageCard: "plant_\(String(Int.random(in: 1 ... 6)))", isNew: false)
                            }
                        }
                        VStack {
                            // NavigationLink to HomeView
                            NavigationLink(destination: Detailed_PlantView()) {
                                CardView(imageCard: "plant_\(String(Int.random(in: 1 ... 6)))", isNew: true)
                            }
                        }
                    }
                }
            }
        }
    }
}

#Preview {
    BrowseView()
}
