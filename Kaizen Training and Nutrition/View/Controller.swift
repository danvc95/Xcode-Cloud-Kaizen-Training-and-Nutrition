//
//  Controller.swift
//  Kaizen Training and Nutrition
//
//  Created by Daniel Van Cleave on 5/20/23.
//

import SwiftUI

struct Controller: View {
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
                       
                            Text("Kaizen Training and Nutrition")
                                .fontWeight(.bold)
             
                            Text("Powered by Blake Franklin")
                                
                            Spacer()
                                .frame(height: 80)
                            
                            
                            VStack{
                                Text("Welcome to Kaizen Training and Nutrition!")
                                    .fontWeight(.bold)
                                    .font(.title)
                                
                                Spacer()
                                    .frame(height: 20)
                            
                                Text("Day 1 of your journey starts now!")
                                .font(.title)
                                .fontWeight(.bold)
                                
                                Spacer()
                                    .frame(height: 70)
                                
                                Text("Contact Us: ")
                                
                            
                            }
                            VStack{
                                
                                
                                Text("Phone: 541-335-4634")
                                Text("email: help@aux.ag")
                            
                                
                            }
                        })
                    }
                }
            }
        }
    }
}

struct Controller_Previews: PreviewProvider {
    static var previews: some View {
        Controller()
    }
}
