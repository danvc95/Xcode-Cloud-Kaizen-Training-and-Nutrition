//
//  Home.swift
//  Kaizen Training and Nutrition
//
//  Created by Daniel Van Cleave on 5/20/23.
//

import SwiftUI

struct Home: View {
    
    @Binding var selectedTab: String
    
    
    //Hiding Tab Bar...
    init(selectedTab: Binding<String>) {
        self._selectedTab = selectedTab
        UITabBar.appearance().isHidden = true
    }
    
    var body: some View {

        // Tab View With Tabs...
        TabView(selection: $selectedTab){
            
            // Views
            HomePage(selectedTab: $selectedTab)
                .tag("HomePage")
            
            Videos()
                .tag("Videos")
            
            Settings()
                .tag("Settings")
            
            Controller()
                .tag("Controller")
            
            Help()
                .tag("Help")
            
            Messages()
                .tag("Messages")
            
            ViewProfile()
                .tag("ViewProfile")
            
            AboutUs()
                .tag("About Us")
            
        }
    }
    
    
}



struct Home_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
.previewInterfaceOrientation(.portrait)
    }
}
