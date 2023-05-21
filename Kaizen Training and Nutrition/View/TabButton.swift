//
//  TabButton.swift
//  Kaizen Training and Nutrition
//
//  Created by Daniel Van Cleave on 5/20/23.
//

import SwiftUI
import WebKit

struct TabButton: View {
    var image: String
    var title: String
    
    
    // Selected Tab..
    @Binding var selectedTab: String
    // For Hero Aniation Slide...
    var animation: Namespace.ID
    
   // var webview: WKWebView!
    var body: some View {
        Button(action: {
            withAnimation(.spring()){selectedTab = title}
            
            
        }, label: {
            
            HStack(spacing : 15){
                Image(systemName: image)
                    .font(.title2)
                    .frame(width: 30)
                
                Text(title)
                    .fontWeight(.semibold)
                
            }
            .foregroundColor(selectedTab == title ?
                             Color("blue") : .white)
            .padding(.vertical, 12)
            .padding(.horizontal, 18)
            
            // Max Fram...xxaxa
            .frame(maxWidth: getRect().width - 230, alignment: .trailing)
            .background(
                
                // hero Animation...
                ZStack{
                    if selectedTab == title{
                        Color.white
                            .opacity(selectedTab == title ? 1 : 0)
                            .clipShape(CustomCorners(corners: [.topLeft, .bottomLeft], radius: 12))
                            .matchedGeometryEffect(id: "TAB", in: animation)
                    }
                    
                }
                
            
            )
        })
        
        
    }
    
}

struct TabButton_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
