//
//  FrameworkDetailView.swift
//  Apple-frameworks
//
//  Created by Anderson Gil on 27/5/24.
//

import SwiftUI

struct FrameworkDetailView: View {
    var framework: Framework
    @Binding var isShowingDetailView : Bool
    @State private var isShowingSafariView : Bool = false
    var body: some View {
        VStack {
            
            XDissmissButton(isShowingDetailView: $isShowingDetailView)
            
            Spacer()
            
            FrameworkTitleView(framework: framework)
            
            Text(framework.description)
                .font(.body)
                .padding()
            
            Spacer()
            
            Button(action: {
                isShowingSafariView = true
            }, label: {
                AFButton(title: "Learn More")
            })
        }
        .fullScreenCover(isPresented: $isShowingSafariView){
            //fullScreen es un sheet pero a pantalla completa
            SafariView(url: (URL(string: framework.urlString) ?? URL(string: "www.apple.com"))! ) //forcing compiler rule with "!"
        }
    }
}

#Preview {
    FrameworkDetailView(framework: MockData.frameworks[0], isShowingDetailView: .constant(false))
    //.constant forza un mock binding
}


