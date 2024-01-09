import SwiftUI

struct TestView: View {
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
        }
    }
}



#Preview {
    TestView()
}
