//
//  ContentView.swift
//  Kaizen Training and Nutrition
//
//  Created by Daniel Van Cleave on 5/17/23.
//

import SwiftUI

struct ContentView: View {
    
    @State var selectedTab = "HomePage"
    
    var body: some View {
        
            
        MainView()
        //SwiftUIView()
        //MainMenu(selectedTab: $selectedTab)


    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            ContentView()
        }
    }
}
