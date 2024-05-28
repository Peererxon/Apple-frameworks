//
//  FrameworkGridViewModel.swift
//  Apple-frameworks
//
//  Created by Anderson Gil on 27/5/24.
//
import SwiftUI

class FrameworkGridViewModel: ObservableObject {
    //This allow the object to "send" information an inform that something changed
    
    var selectedFramework: Framework? {
        didSet { isShowingDetailView = true }
            //cada vez que reciba un valor cambiara el valor a true
    }
   @Published var isShowingDetailView = false
    //el @published hace que la propiedad sea "Expuesta" y alguien pueda observar dichos cambios (como el corchete de useEffect)
    
    let columns: [GridItem] = [GridItem(.flexible()),
                             GridItem(.flexible()),
                               GridItem(.flexible())] //estas definiendo las columnas
}
