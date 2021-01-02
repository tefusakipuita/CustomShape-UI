//
//  TopButton.swift
//  CustomShape
//
//  Created by 中筋淳朗 on 2020/11/11.
//

import SwiftUI

struct TopButton: View {
    
    // MARK: - Property
    
    var imageName: String
    
    
    // MARK: - Body
    
    var body: some View {
        Button(action: {}, label: {
            Image(systemName: imageName)
                .font(.system(size: 22))
        })
    }
}

// MARK: - Preview

//struct TopButton_Previews: PreviewProvider {
//    static var previews: some View {
//        ContentView(, animation: <#Namespace.ID#>)
//    }
//}
