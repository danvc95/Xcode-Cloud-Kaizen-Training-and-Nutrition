//
//  MenuView.swift
//  Kaizen Training and Nutrition
//
//  Created by Daniel Van Cleave on 5/20/23.
//

import SwiftUI

struct MainView: View {
    //Selected Tab..
    @State var selectedTab = "HomePage"
    @State var showMenu = false
    
    
    func swipeRight( ){
        
        
    }
    
    var body: some View {
        VStack(spacing: 0){
        ZStack{
            
            Color("blue")
                .ignoresSafeArea()
            
            // Side Menu...
            SideMenu(selectedTab: $selectedTab)
     
            ZStack{
                
                // two background Cards...
                
                Color.white
                    .opacity(0.5)
                    .cornerRadius(showMenu ? 15 : 0)
                // Shadow...
                    .shadow(color: Color.black.opacity(0.07), radius: 5, x: -5, y:0)
                    .offset(x: showMenu ? 25 : 0)
                    .padding(.vertical,30)
                
                Color.white
                    .opacity(0.4)
                    .cornerRadius(showMenu ? 15 : 0)
                // Shadow...
                    .shadow(color: Color.black.opacity(0.07), radius: 5, x: -5, y:0)
                    .offset(x: showMenu ? 50 : 0)
                    .padding(.vertical,60)
                
                Home(selectedTab: $selectedTab)
                    .cornerRadius(showMenu ? 15 : 0)
                
            }
            //Scaling and Moving the view...
                .scaleEffect(showMenu ? 0.84 : 1)
                .offset(x: showMenu ? getRect().width - 700 : 0)
                .ignoresSafeArea()
            
                .overlay (
                    
            // Menu Button...
            Button(action: {
                withAnimation(.spring()){
                    showMenu.toggle()
                }
            }, label: {
            
            //Animated Drawer Button..
            VStack(spacing: 8){
                Capsule()
                    .fill(showMenu ? Color.black : Color.primary)
                    .frame(width: 40, height: 3)
                
                // Rotating...
                    .rotationEffect(.init(degrees: showMenu ? -50 : 0))
                    .offset(x: showMenu ? 3 : 0, y: showMenu ? 12 : 0)
                    .offset(x: 145, y: -300)
                VStack(spacing: 8){
                    Capsule()
                        .fill(showMenu ? Color.black : Color.primary)
                        .frame(width: 40, height: 3)
                        
                    // Moving up when clicked
                    Capsule()
                        .fill(showMenu ? Color.black : Color.primary)
                        .frame(width: 40, height: 3)
                        .offset( y: showMenu ? -11 : 0)
                }
                .rotationEffect(.init(degrees: showMenu ? 50: 0))
                .offset(x: 145, y: -300)
            
            }
                
            })
            
            //.padding()
                    
                ).offset(x: 0, y: 0)
                .ignoresSafeArea()

            // Menu Button...
            
            Button(action: {
                withAnimation(.spring()){
                    if(showMenu){
                        showMenu.toggle()
                    }
                    
                }
            }, label: {
            
            //Animated Drawer Button..
            
                Capsule()
                    .fill()
                    .frame(width: 70, height: 775 )
                    
                // Rotating...
                    
                    .offset(x: 0, y: 0)
                    .opacity(0.0)
                
            })
                .padding(.trailing, 6.0)
                .offset(x: -150, y: 0)
            
            Button(action: {
                withAnimation(.spring()){
                    
                        showMenu.toggle()
                    
                    
                }
            }, label: {
            
            //Animated Drawer Button..
            
                Capsule()
                    .fill()
                    .frame(width: 70, height: 70 )
                    
                // Rotating...
                    
                  
                    .opacity(0.0)
            })
                .padding(.trailing, 9.0)
                .offset(x: 150, y: -300)

        }
        
         MainMenu(selectedTab: $selectedTab)

        }
    }
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}



//Extending View to get Screen size
extension View{
    func getRect()->CGRect{
        print(UIScreen.main.bounds)
        return UIScreen.main.bounds
        
    }
    
}
