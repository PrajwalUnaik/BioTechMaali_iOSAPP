import SwiftUI

struct CardView: View {
    
    let imageCard: String
    let isNew: Bool
    let colors: [Color] = [.olive, .camo, .persianOrange, .teaGreen, .green1,  .jet]
    
    
    
    var randomGradient: LinearGradient {
            let randomColor = colors.randomElement() ?? .blue
        return LinearGradient(gradient: Gradient(colors: [randomColor, Color.white]), startPoint: .bottomLeading, endPoint: .center)
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
                        .font(.custom("Avenir", size: 14))
                        .fontWeight(.bold)
                    Text("Type of Plant")
                        .font(.custom("Avenir", size: 12))
                        .foregroundColor(Color.gray)
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
                    RoundedRectangle(cornerRadius: 25)
                        .frame(width: 40,height: 20 , alignment: .topTrailing)
                        .foregroundColor(.red)
                    HStack {
                        Text("New")
                            .font(.caption)
                            .foregroundColor(.white)
                    }
                }.offset(x:45, y: -79)
            }
        }
    }
    
    private let cardAndImageWidth: CGFloat = 170
    private let cardHeight: CGFloat = 180
    private let imageHeight: CGFloat = 116
    private let cornerRadius: CGFloat = 20
}

#Preview {
    CardView(imageCard: "plant_3", isNew: true)
        .previewLayout(.sizeThatFits)
}
