//
//  SideMenu.swift
//  Kaizen Training and Nutrition
//
//  Created by Daniel Van Cleave on 5/20/23.
//

import SwiftUI

struct SideMenu: View {
    //Selected Tab..
    @Binding var selectedTab: String
    @Namespace var animation
    var title = "ViewProfile"
    
    var body: some View {
        ZStack{
        
            Color("blue")
                .ignoresSafeArea()
            
            // Side Menu...
            
            VStack(alignment: .trailing, spacing: 15, content: {
                Spacer()
                    .frame(height: 10)
                //Profile Pic
                Image("Kaizen Logo")
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: 70, height: 70)
                    .cornerRadius(10)
                
                // Padding top for Top Close Button
                    .padding(.top, 50)
                
                VStack(alignment: .trailing, spacing: 6, content: {
                    
                    Text("Kaizen Training and Nutrition")
                        .font(.title)
                        .fontWeight(.heavy)
                        .foregroundColor(.white)
                        .multilineTextAlignment(.trailing)
                    
//                    Button(action: {
//                        withAnimation(.spring()){selectedTab = title}
//                    }, label: {
//                        Text("dvancleave@eou.edu")
//                            .fontWeight(.semibold)
//                            .foregroundColor(.white)
//                            .opacity(0.7)
//                    })
                    
                })
                
                //tab Buttons...
                VStack(alignment: .trailing, spacing: 10){
                    
                    TabButton(image: "person.crop.circle.fill", title: "ViewProfile",
                        selectedTab: $selectedTab,
                              animation: animation)
                    
                    TabButton(image: "message.fill", title: "Messages",
                        selectedTab: $selectedTab,
                              animation: animation)
                    
                    TabButton(image: "gearshape.fill", title: "Settings", selectedTab: $selectedTab,
                        animation: animation)
                    
                    TabButton(image: "text.book.closed", title: "About Us", selectedTab: $selectedTab,
                        animation: animation)
                    
                    TabButton(image: "questionmark.circle", title: "Help", selectedTab: $selectedTab,
                        animation: animation)
                    
                }
                .padding(.trailing, -15)
                .padding(.top, 50)
                
                //Sign out button...
                Spacer()
               
                VStack(alignment: .trailing, spacing: 6, content:{
                    TabButton(image: "rectangle.righthalf.inset.fill.arrow.right", title: "Log out", selectedTab: .constant(""),
                        animation: animation)
                        .padding(.trailing, -5)
                    
                    Text("App Version 1.01")
                        .font(.caption)
                        .fontWeight(.semibold)
                        .foregroundColor(.white)
                        .opacity(0.6)
                    
                })
            })
                .padding()
            .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .topTrailing)
                .padding(.top)
                .padding(.top)
                .padding(.top)

        }
    }
}

struct SideMenu_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
