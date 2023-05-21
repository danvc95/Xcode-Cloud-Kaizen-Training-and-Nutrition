//
//  Setup.swift
//  Kaizen Training and Nutrition
//
//  Created by Daniel Van Cleave on 5/20/23.
//

import SwiftUI
import UIKit
import SceneKit

struct Setup: View {
    
    var body: some View{
        
        NavigationView{
            ZStack{
                Color("blue")
                    .ignoresSafeArea()
                    .opacity(0.5)
                
                ScrollView{
                VStack(alignment: .leading, spacing: 5, content: {
                    Text("AUX Bin Bot")
                            .font(.title)
                            .fontWeight(.bold)
                            .foregroundColor(.primary)
                            .frame(maxWidth: .infinity, alignment: .center)
                        Text("Step 1: ")
                            .fontWeight(.bold)
                            .font(.title2)
                        Text("Please familiarize yourself with the 3D model below!")
                            .fontWeight(.semibold)

                        
                        
                        SceneView(scene: SCNScene(named: "BinBot_fusion360import.stl" ), options: [.autoenablesDefaultLighting, .allowsCameraControl])
                        
                            .frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height / 2)
                        
                        Spacer(minLength: 0)
                        
                        
                    })
                    Spacer()
                        .frame(height: 50)
                    VStack(alignment: .leading, spacing: 20, content:{
                    
                        Text("Step 2")
                            .fontWeight(.bold)
                            .font(.title2)
                        Text("In order to turn Bin Bot on, locate the power button on the battery pack.")
                            .fontWeight(.semibold)
                        Image("Robot1")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(maxWidth: .infinity, alignment: .center)
                    Spacer()
                            .frame(height: 50)
                    })
                    VStack(alignment: .leading, spacing: 20, content:{
                        Text("Step 3")
                            .fontWeight(.bold)
                            .font(.title2)
                        Text("Ensure that the Bin Bot's forks are spaced 2 to 3 feet apart.")
                            .fontWeight(.semibold)
                        Image("Robot2")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(maxWidth: .infinity, alignment: .center)
                        Spacer()
                            .frame(height: 50)
                    })
                    VStack(alignment: .leading, spacing: 20, content:{
                        Text("Step 4")
                            .fontWeight(.bold)
                            .font(.title2)
                        Text("After slides its forks under the bin, verify that the bin is making contact with the virticle portion of the forks and that the end of the forks are visible on the front of the bin.")
                            .fontWeight(.semibold)
                        Image("Robot3")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(maxWidth: .infinity, alignment: .center)
                        Spacer()
                            .frame(height: 50)
                    })
                    VStack(alignment: .leading, spacing: 20, content:{
                        Text("Step 5")
                            .fontWeight(.bold)
                            .font(.title2)
                        Text("After Calibration is complete, the Bin Bot will make straight paths down each row.")
                            .fontWeight(.semibold)
                        Image("Straight")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(maxWidth: .infinity, alignment: .center)
                        Spacer()
                            .frame(height: 50)
                    })
                    VStack(alignment: .leading, spacing: 20, content:{
                        Text("Step 6")
                            .fontWeight(.bold)
                            .font(.title2)
                        Text("The Bin Bot will now use Lidar to avoid obstacles and position itself in the middle of the rows")
                            .fontWeight(.semibold)
                        Image("lidar")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(maxWidth: .infinity, alignment: .center)
                    
                        })
            
                }
            }
            .navigationBarTitle("Setup")
        }
            
        }
        
    
}


struct Setup_Previews: PreviewProvider {
    static var previews: some View {
        Setup()
.previewInterfaceOrientation(.portrait)
    }
}

