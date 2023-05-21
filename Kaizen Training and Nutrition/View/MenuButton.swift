//
//  MenuButton.swift
//  Kaizen Training and Nutrition
//
//  Created by Daniel Van Cleave on 5/20/23.
//

import SwiftUI

struct MenuButton: View {
    var image: String
    var title: String
    
    
    // Selected Tab..
    @Binding var selectedTab: String
    // For Hero Aniation Slide...
    var animation: Namespace.ID
    
    
    var body: some View {
        Button(action: {
            withAnimation(.spring()){selectedTab = title}
            
            
        }, label: {
            
            VStack(spacing : 10){
                Image(systemName: image)
                    .font(.title2)
                    .frame(width: 2)
                
                Text(title)
                    .fontWeight(.semibold)
                
            }
            .foregroundColor(selectedTab == title ?
                             Color("blue") : .white)
            .padding(.vertical, 11)
            .padding(.horizontal, 14)
            
            // Max Frame...
            .frame(maxWidth: getRect().width, alignment: .center)
            .background(
            
                // hero Animation...
                ZStack{
                    if selectedTab == title{
                        Color.white
                            .opacity(selectedTab == title ? 1 : 10)
                            .clipShape(CustomCorners(corners: [.topLeft, .bottomLeft, .topRight, .bottomRight], radius: 10))
                            .matchedGeometryEffect(id: "TAB", in: animation)
                    }
                })
        })
    }
}



struct MenuButton_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
