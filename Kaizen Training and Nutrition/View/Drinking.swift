//
//  Drinking.swift
//  Kaizen Training and Nutrition
//
//  Created by Daniel Van Cleave on 5/22/23.
//

import SwiftUI
import WebKit



struct Drinking: View {

    
    var body: some View{
        NavigationView{
            ZStack(){
                
                Color("blue")
                    .ignoresSafeArea()
                    .opacity(0.5)
                
                VStack(alignment: .center ,spacing: 1){
                    
                    
                    Image("Kaizen Logo")
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .frame(width: getRect().width - 300, height: 100)
                    
               
                    Text("Kaisen Training and Nutrition")
                        .fontWeight(.bold)
                    
                    Group{
                        Spacer()
                            .frame(height: 100)
                        
                        Text("Drinking:")
                            .font(.title)
                            .fontWeight(.bold)
                        
                        Spacer()
                            .frame(height: 10)
                        
                        Image("drinking")
                            .resizable()
                            .aspectRatio(CGSize(width: 7, height: 4), contentMode: .fill)
                            .frame(width: getRect().width - 40, height: 230)
                            .cornerRadius(20)
                        
                        
                        
                        
                        Spacer()
                            .frame(height: 180)
                        
                    }
                    
                    
                    
                }
                
            }
            
        }.navigationBarBackButtonHidden(true)
            
    }

    
    struct MyBackButton: View {
        let label: String
        let closure: () -> Void

        var body: some View {
            
            NavigationLink(destination: Walking()) {
                HStack(spacing: 4) {
                    Image(systemName: "chevron.left")
                    Text("Back")
                    }
            }
            
        }
    }
    
    
}





struct Drinking_Previews: PreviewProvider {
    static var previews: some View {
        Drinking()
    }
}
