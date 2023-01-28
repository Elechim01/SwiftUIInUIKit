//
//  BlurView.swift
//  TwitterProfileScrolling (iOS)
//
//  Created by Michele Manniello on 09/05/21.
//

import SwiftUI
struct BlurView : UIViewRepresentable {
    func makeUIView(context: Context) -> UIVisualEffectView {
        let view = UIVisualEffectView(effect: UIBlurEffect(style: .systemChromeMaterialDark))
        return view
    }
    func updateUIView(_ uiView: UIVisualEffectView, context: Context) {
        
    }
}
