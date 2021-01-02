//
//  TabButton.swift
//  CustomShape
//
//  Created by 中筋淳朗 on 2020/11/11.
//

import SwiftUI

struct TabButton: View {
    
    // MARK: - Property
    
    @Binding var selectedTab: String
    
    var title: String
    
    // なにこれ？？？？？？
//    var animation: Namespace.ID
    
    
    // MARK: - Body
    
    var body: some View {
        Button(action: {
            selectedTab = title
        }, label: {
            Text(title)
                .foregroundColor(.white)
                .padding(10)
                .background(
                    ZStack { // ZStackを使うことで内部でif文が使えるようになる
                        if selectedTab == title {
                            LinearGradient(gradient: Gradient(colors: [Color("Color1"), Color("Color2")]), startPoint: .topLeading, endPoint: .bottomTrailing)
                                .cornerRadius(10)
//                                .matchedGeometryEffect(id: "Tab", in: animation)
                        } //: if
                    } //: ZStack
                ) //: background
        }) //: Button
    }
}

// MARK: - Preview

struct TabButton_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
