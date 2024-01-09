import SwiftUI

struct HCardview: View {
    
    let imageCard: String
    let isNew: Bool
    let colors: [Color] = [.olive, .camo, .persianOrange, .teaGreen, .green1, .jet]
    
    
    
    var randomGradient: LinearGradient {
        let randomColor = colors.randomElement() ?? .blue
        return LinearGradient(gradient: Gradient(colors: [randomColor, Color.white]), startPoint: .center, endPoint: .bottomTrailing)
    }
    
    var body: some View {
        ZStack {
            VStack(alignment: .leading, spacing: 10) {
                ZStack {
                    
                    Image(imageCard)
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: cardAndImageWidth, height: imageHeight)
                        .clipped()
                }.background(randomGradient)
                
                LazyVStack(alignment: .leading, spacing: 2) {
                    Text("Plant")
                        .font(.custom("Avenir", size: 24))
                        .fontWeight(.bold)
                    Text("Type of Plant")
                        .font(.custom("Avenir", size: 15))
                        .foregroundColor(.secondary)
                    
                    Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit. Tortor sed tellus fusce laoreet facilisi urna imperdiet.").foregroundColor(.camo)
                        .multilineTextAlignment(/*@START_MENU_TOKEN@*/.leading/*@END_MENU_TOKEN@*/)
                }
                .padding(.horizontal, 12)
                .padding(.bottom, 11)
            }
            .frame(width: cardAndImageWidth, height: cardHeight)
            .cornerRadius(cornerRadius)
        }
        .cornerRadius(30)
        .offset(x: -10, y: -10)
        .overlay{
            if isNew == true
            {
                ZStack {
                    RoundedRectangle(cornerRadius: 35)
                        .frame(width: 40,height: 20 , alignment: .topTrailing)
                        .foregroundColor(.red)
                    HStack {
                        Text("New")
                            .font(.caption)
                            .foregroundColor(.white)
                    }
                }.offset(x:150, y: -120)
            }
        }
    }
    
    private let cardAndImageWidth: CGFloat = 370
    private let cardHeight: CGFloat = 280
    private let imageHeight: CGFloat = 120
    private let cornerRadius: CGFloat = 20
}

#Preview {
    HCardview(imageCard: "plant_3", isNew: true)
        .previewLayout(.sizeThatFits)
}
