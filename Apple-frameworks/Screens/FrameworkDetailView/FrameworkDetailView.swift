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
               // AFButton(title: "Learn More")
                // IOS 16
                Label("Learn more", systemImage: "book.fill")
            })
            .buttonStyle(.borderedProminent) // estilos predeterminados del boton
            .controlSize(.large) // tamaño del boton
            //.buttonBorderShape(.roundedRectangle) para darle formas predeterminadas al boton
            .tint(.red)
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


