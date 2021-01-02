//
//  ContentView.swift
//  CustomShape
//
//  Created by 中筋淳朗 on 2020/11/11.
//

import SwiftUI

struct ContentView: View {
    
    // MARK: - Property
    
    var tabs = ["Visiters", "Pokemons", "Type"]
    
    @State var selectedTab = "Visiters"

    // ？？？？？？？
    @Namespace var animation
    
    
    // MARK: - Body
    
    var body: some View {
        VStack (spacing: 0) {
            VStack {
                
                // MARK: - Top Button
                HStack {
                    TopButton(imageName: "camera")
                    Spacer()
                    Text("Custom Shape")
                        .font(.title2)
                        .fontWeight(.semibold)
                    Spacer()
                    TopButton(imageName: "magnifyingglass")
                } //: HStack
                .foregroundColor(.white)
                .padding(.top, 20)
                .padding(.bottom, 30)
                .padding(.horizontal, 20)
                
                // MARK: - Tab Button
                HStack (spacing: 32) {
                    ForEach(tabs, id: \.self) { item in
//                        TabButton(selectedTab: $selectedTab, title: item, animation: animation)
                        TabButton(selectedTab: $selectedTab, title: item)
                    } //: ForEach
                } //: HStack
                .padding(22)
                .background(
                    Color.white.opacity(0.2)
                        .cornerRadius(20)
                )
                
            } //: VStack
            .padding(.top, UIApplication.shared.windows.first?.safeAreaInsets.top)
            .padding(.bottom, 35)
            .background(
                LinearGradient(gradient: Gradient(colors: [Color("Color1"), Color("Color2")]), startPoint: .topLeading, endPoint: .bottomTrailing)
            )
            .clipShape(CustomCorner(corner: .bottomLeft, size: CGSize(width: 60, height: 60)))
            
            ZStack {
                // MARK: - bottomTrailing Curve & List Background
                // 上のLinearGradientの右下 と 下のLinearGradientの右上 がうまく馴染むように、色の順番と方向を変える
                LinearGradient(gradient: Gradient(colors: [Color("Color2"), Color("Color1")]), startPoint: .topTrailing, endPoint: .bottomLeading)
                Color("bg")
                    .clipShape(CustomCorner(corner: .topRight, size: CGSize(width: 60, height: 60)))
                
                // MARK: - List Title
                ScrollView (showsIndicators: false) {
                    VStack (spacing: 20) {
                        HStack {
                            Text("All Visiters")
                                .font(.title2)
                                .fontWeight(.bold)
                            Spacer()
                            Button(action: {}, label: {
                                Image(systemName: "slider.horizontal.3")
                                    .font(.system(size: 22))
                            })
                        } //: HStack
                        .padding(.top, 25)
                        
                        // MARK: - List
                        ForEach(visiterData) { item in
                            VisiterView(imageName: item.imageName, visiterName: item.name, message: item.message, time: item.time)
                        } //: ForEach
                        
                    } //: VStack
                    .foregroundColor(Color.black.opacity(0.7))
                    .padding(.leading, 15)
                    .padding(.trailing, 20)
                } //: Scroll
            } //: ZStack
            
            // MARK: -  List
            
            Spacer()
        } //: VStack
        .background(Color("bg"))
        .ignoresSafeArea()
    }
}

// MARK: - Preview

struct ContentView_Previews: PreviewProvider {
    
    static var previews: some View {
        ContentView()
    }
}
