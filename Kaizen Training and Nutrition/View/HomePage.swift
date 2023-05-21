//
//  HomePage.swift
//  Kaizen Training and Nutrition
//
//  Created by Daniel Van Cleave on 5/20/23.
//

//

import SwiftUI



//HomePage Sub View
struct HomePage: View {

    
    @Binding var selectedTab: String
    
      
    var body: some View{
       
        
        
        NavigationView{
            
            
            
            
            ZStack {
                Image("background")
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: getRect().width - 0, height: 1000)
                    .cornerRadius(40)
                
                
                
                VStack{
                    
                    HStack(spacing: 70){
                        
                        Button( action: {selectedTab = "Settings"}
                            
                        , label: {
                            Image(systemName: "figure.walk.circle")
                                .resizable()
                                .frame(width: getRect().width - 300, height: 90)
                                .foregroundColor(.white)
                            })
                        
                        Button {
                            
                        } label: {
                            Image(systemName: "fork.knife.circle")
                                .resizable()
                                .frame(width: getRect().width - 300, height: 90)
                                .foregroundColor(.white)
                        }
                        
                        
                        
                        
                        
                    }
                    Spacer()
                        .frame(height: 20)
                    
                    Image("puzzle")
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .frame(width: getRect().width - 40, height: 350)
                        .cornerRadius(40)
                    
                    Spacer()
                        .frame(height: 20)
                    
                    HStack(spacing: 70){
                        
                        Button {
                            
                        } label: {
                            Image(systemName: "bed.double.circle")
                                .resizable()
                                .frame(width: getRect().width - 300, height: 90)
                                .foregroundColor(.white)
                        }
                        
                        Button {
                            
                        } label: {
                            Image(systemName: "drop.circle")
                                .resizable()
                                .frame(width: getRect().width - 300, height: 90)
                                .foregroundColor(.white)
                        }
                        
                        
                        
                        
                        
                    }
                }
                    
                        
            }
        }
    }
}




struct HomePage_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

