import SwiftUI

struct ContentView: View {
    @State private var isTextAnimated = false
    @State private var isTapped = false
    
    var body: some View {
        NavigationView {
            ZStack {
                Color(.white)
                    .ignoresSafeArea()
                
                Image("PlantBack")
                    .resizable()
                    .scaledToFit()
                    .ignoresSafeArea()
                    .frame(width: 1000, height: 1000)
                
                VStack {
                    Image("BioTechMaali-logo")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 150)
                        .padding()
                    //.scaleEffect(isTextAnimated ? 1.0 : 0)
                        .opacity(isTextAnimated ? 1 : 0)
                }
                .offset(x: 70, y: 80)
                
                VStack {
                    
                    // NavigationLink to HomeView
                    NavigationLink(destination: HomeView()) {
                        Text("Go to HomeView")
                    }.font(.callout)
                        .foregroundColor(.white)
                        .padding()
                        .background(
                                Capsule().strokeBorder(Color.white, lineWidth: 1))
                        .offset(y:330)
                }
            }
            
            .onAppear {
                withAnimation {
                    withAnimation(.easeInOut(duration: 2)){
                        isTextAnimated.toggle()}
                }
        }
        }
    }
}

#Preview {
    ContentView()
}
