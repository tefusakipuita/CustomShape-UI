//
//  Visit.swift
//  CustomShape
//
//  Created by 中筋淳朗 on 2020/11/11.
//

import SwiftUI

struct Visit: Identifiable {
    
    var id = UUID().uuidString
    var name: String
    var imageName: String
    var message: String
    var time: String
}
