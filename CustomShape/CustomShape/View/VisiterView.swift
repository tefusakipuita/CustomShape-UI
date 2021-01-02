//
//  VisiterView.swift
//  CustomShape
//
//  Created by 中筋淳朗 on 2020/11/11.
//

import SwiftUI

struct VisiterView: View {
    
    // MARK: - Property
    
    var imageName: String
    var visiterName: String
    var message: String
    var time: String
    
    
    // MARK: - Body
    
    var body: some View {
        HStack {
            ZStack {
                Circle()
                    .fill(
                        LinearGradient(gradient: Gradient(colors: [Color("Color1"), Color("Color2")]), startPoint: .topLeading, endPoint: .bottomTrailing)
                    )
                    .frame(width: 67, height: 67)
                Image(imageName)
                    .resizable()
                    .scaledToFill()
                    .frame(width: 60, height: 60)
                    .clipShape(Circle())
            } //: ZStack
            VStack (alignment: .leading, spacing: 10) {
                Text(visiterName)
                    .fontWeight(.semibold)
                    .font(.system(size: 19))
                Text(message)
                    .font(.callout)
            } //: VStack
            Spacer()
            VStack {
                Text(time)
                    .fontWeight(.bold)
                    .font(.system(size: 15))
                    .padding(.top, 10)
                Spacer()
            } //: VStack
        } //: HStack
    }
}

// MARK: - Preview

struct VisiterView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
