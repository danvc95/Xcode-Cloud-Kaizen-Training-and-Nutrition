//
//  CustomCorners.swift
//  Kaizen Training and Nutrition
//
//  Created by Daniel Van Cleave on 5/20/23.
//

import SwiftUI

// Custom Corner Shapes...
struct CustomCorners: Shape {
    var corners: UIRectCorner
    var radius: CGFloat
    func path(in rect: CGRect) -> Path {
        
        let path = UIBezierPath(roundedRect: rect, byRoundingCorners: corners, cornerRadii: CGSize(width: radius, height: radius))
        
        return Path(path.cgPath)
    }
    
    
}
