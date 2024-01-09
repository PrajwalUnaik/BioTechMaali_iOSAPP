//
//  YoutubeView.swift
//  BioTechMaali
//
//  Created by Prajwal U on 06/01/24.
//

import SwiftUI

struct YoutubeView: View {
    var body: some View {
        ScrollView{
            
            
            HStack {
                Image(systemName: "play.rectangle.fill")
                    .cornerRadius(50)
                    .foregroundColor(.red)
                Text("YouTube - Biotechmaali")
            }
            .padding()
            
            VStack {
                HStack{
                    YoutubeVideoView(youtubeVideoID: "tVgzhvm6_jA?si=9AV50LmCod7bpDvB")
                        .frame(width: 350 ,height: 200 , alignment: .leading)
                }
            }
            .cornerRadius(10)
            .frame(width: 350, height: 250)
            
            ScrollView(.horizontal, showsIndicators: true) {
                /// A VStack containing colored rectangles.
                HStack{
                    YoutubeVideoView(youtubeVideoID: "nAZg7zACqz0?si=OHLiWw4-PHlYMVOw")
                    YoutubeVideoView(youtubeVideoID: "jujHtlN2Fb0?si=63wOnccVYYm_Cg49")
                    YoutubeVideoView(youtubeVideoID: "jujHtlN2Fb0?si=63wOnccVYYm_Cg49")
                    YoutubeVideoView(youtubeVideoID: "P2UM0LXuQrY?si=cwTDNplY7syxLXzd")
                    YoutubeVideoView(youtubeVideoID: "nAZg7zACqz0?si=OHLiWw4-PHlYMVOw")
                }
                .cornerRadius(10)
                .frame(width: 850 ,height: 300 , alignment: .leading)
                .padding()
            }
            
            VStack {
                HStack{
                    YoutubeVideoView(youtubeVideoID: "P2UM0LXuQrY?si=cwTDNplY7syxLXzd")
                        .frame(width: 350 ,height: 200 , alignment: .leading)
                }
            }
            .cornerRadius(10)
            .frame(width: 350, height: 250)
            VStack {
                HStack{
                    YoutubeVideoView(youtubeVideoID: "nAZg7zACqz0?si=OHLiWw4-PHlYMVOw")
                        .frame(width: 350 ,height: 200 , alignment: .leading)
                }
            }
            .cornerRadius(10)
            .frame(width: 350, height: 250)
        }
    }
    //P2UM0LXuQrY?si=cwTDNplY7syxLXzd
    //jujHtlN2Fb0?si=63wOnccVYYm_Cg49
}

#Preview {
    YoutubeView()
}
