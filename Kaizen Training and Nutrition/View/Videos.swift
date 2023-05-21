//
//  Videos.swift
//  Kaizen Training and Nutrition
//
//  Created by Daniel Van Cleave on 5/20/23.
//

import SwiftUI

struct Videos: View {

    var body: some View{
    
        NavigationView{
            
            ZStack {
                
                Image("puzzle")
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: getRect().width - 0, height: 800)
                    .cornerRadius(40)
                
                ScrollView{
                
                VStack(alignment: .leading,spacing: 2){
                    
                    VStack(alignment: .center, spacing: 3, content: {
                        Spacer()
              
                        Image("Kaizen Logo")
                            .resizable()
                            .aspectRatio(contentMode: .fill)
                            .frame(width: getRect().width - 300, height: 100)
                        Spacer()
                   
                        Text("Kaisen Training and Nutrition")
                            .fontWeight(.bold)
            
                        VStack(alignment: .leading,spacing: 2, content:{
                        Spacer()
                            .frame(height: 50)
                    
                            
                            Spacer()
                                .frame(height: 130)
                            
                            Image("video1")
                                .resizable()
                                .aspectRatio(contentMode: .fill)
                                .frame(width: getRect().width - 100, height: 40)
                          
                        })
                        
                    })
                    
                    VStack{
                        Spacer()
                            .frame(height: 230)
                        
                        
                        Image("video2")
                            .resizable()
                            .aspectRatio(contentMode: .fill)
                            .frame(width: getRect().width - 100, height: 40)
                        
                        Spacer()
                            .frame(height: 230)
                        
                        Image("video3")
                            .resizable()
                            .aspectRatio(contentMode: .fill)
                            .frame(width: getRect().width - 100, height: 40)
                        Spacer()
                            .frame(height: 230)
                        
                    }

                }
                
                }
            }
            
        }
        
    }
}
