//
//  SafariView.swift
//  Apple-frameworks
//
//  Created by Anderson Gil on 28/5/24.
//

//Using old way
import SwiftUI
import SafariServices


struct SafariView : UIViewControllerRepresentable {
    
    let url: URL
    func makeUIViewController(context: UIViewControllerRepresentableContext<SafariView>) -> SFSafariViewController {
        SFSafariViewController(url: url)
    }
    
    func updateUIViewController(_ uiViewController: SFSafariViewController, context: UIViewControllerRepresentableContext<SafariView>) {}
    
    
}

