//
//  AFButton.swift
//  Apple-frameworks
//
//  Created by Anderson Gil on 27/5/24.
//

import SwiftUI


struct AFButton: View {
    var title:String
    
    var body: some View {
        Text(title)
            .font(.title2)
            .fontWeight(.semibold)
            .frame(width: 280, height: 50)
            .background(Color(Color.red))
            .foregroundStyle(Color(.white))
            .clipShape(.rect(cornerRadius: 10))

    }
}

#Preview {
    AFButton(title:"Preview")
}

