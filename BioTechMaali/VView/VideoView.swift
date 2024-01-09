//
//  VideoView.swift
//  BioTechMaali
//
//  Created by Prajwal U on 06/01/24.
//

import SwiftUI
import WebKit

/// Youtube View player
struct YoutubeVideoView: UIViewRepresentable {
    
    var youtubeVideoID: String
    
    func makeUIView(context: Context) -> WKWebView  {
        
        WKWebView()
    }
    
    func updateUIView(_ uiView: WKWebView, context: Context) {
        
        let path = "https://www.youtube.com/embed/\(youtubeVideoID)"
        guard let url = URL(string: path) else { return }
        
        uiView.scrollView.isScrollEnabled = false
        uiView.load(.init(url: url))
    }
}




