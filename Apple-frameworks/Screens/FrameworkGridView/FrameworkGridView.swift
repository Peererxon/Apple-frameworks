//
//  FrameworkGridView.swift
//  Apple-frameworks
//
//  Created by Anderson Gil on 25/5/24.
//

import SwiftUI

struct FrameworkGridView: View {
    
    @StateObject var viewModel = FrameworkGridViewModel()
    
    var body: some View {
        NavigationView {
            ScrollView {
                LazyVGrid(columns: viewModel.columns, content: {
                    ForEach(MockData.frameworks) {
                        //id: \.id
                        //Se elimino esta linea de los parametros del forEach dado que al ser Identifiable SwiftUI sabe de antemano cual es la propiedad que es el id
                        framework in
                        FrameworkTitleView(framework: framework)
                            .onTapGesture {
                                viewModel.selectedFramework = framework
                                //change the source of truth
                            }
                    }
                })
                .navigationTitle("🍎 Frameworks")
                .sheet(isPresented: $viewModel.isShowingDetailView){
                    FrameworkDetailView(framework: viewModel.selectedFramework ?? MockData.sampleFramework, isShowingDetailView: $viewModel.isShowingDetailView)
                }
            }
        }

    }
}

#Preview {
    FrameworkGridView()
}
