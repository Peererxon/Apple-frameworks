//
//  XDissmissButton.swift
//  Apple-frameworks
//
//  Created by Anderson Gil on 28/5/24.
//

import SwiftUI

struct XDissmissButton: View {
    @Binding var isShowingDetailView : Bool
    var body: some View {
        HStack() {
            //En HStack el spacer los empuja horizontalmente
            Spacer()
            
            Button(action: {
                isShowingDetailView = false
            }, label: {
                Image(systemName: "xmark")
                    .foregroundStyle(Color(.label)) //esto hace que el boton siga el color que tenga el sistema si estan en modo dark o normal
                    .imageScale(.large)
                    .frame(width: 44, height: 44)
            })
        }
        .padding()
    }
}

#Preview {
    XDissmissButton(isShowingDetailView: .constant(false))
}
