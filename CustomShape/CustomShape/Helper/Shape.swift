//
//  Shape.swift
//  CustomShape
//
//  Created by 中筋淳朗 on 2020/11/11.
//

import SwiftUI


struct CustomCorner: Shape {
    
    var corner: UIRectCorner
    var size: CGSize
    
    func path(in rect: CGRect) -> Path {
        let path = UIBezierPath(roundedRect: rect, byRoundingCorners: corner, cornerRadii: CGSize(width: size.width, height: size.height))
        
        return Path(path.cgPath)
    }
}
