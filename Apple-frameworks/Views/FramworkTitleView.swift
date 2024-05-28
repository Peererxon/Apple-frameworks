//
//  FramworkTitleView.swift
//  Apple-frameworks
//
//  Created by Anderson Gil on 28/5/24.
//

import SwiftUI


struct FrameworkTitleView : View{
    let framework : Framework
    var body : some View {

        VStack{
            Image(framework.imageName)
                .resizable()
                .frame(width: 90, height: 90)
            Text(framework.name)
                .font(.title2)
                .fontWeight(.semibold)
                .scaledToFit()
                .minimumScaleFactor(0.6) //valor maximo para encogerse
            
            
        }
        .padding()
    }
}


#Preview {
    FrameworkTitleView(framework: MockData.sampleFramework)
}
