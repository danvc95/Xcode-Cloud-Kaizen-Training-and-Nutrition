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
            
            Help()
                .tag("Help")
            
            Messages()
                .tag("Messages")
            
           
            
            AboutUs()
                .tag("About Us")
            
            Walking()
                .tag("Walking")
            
            Drinking()
                .tag("Drinking")
            
            Eating()
                .tag("Eating")
            
            Sleeping()
                .tag("Sleeping")
            
            
            
            
        }
    }
    
    
}



struct Home_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
.previewInterfaceOrientation(.portrait)
    }
}
