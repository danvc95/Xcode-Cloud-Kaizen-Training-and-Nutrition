//
//  Messages.swift
//  Kaizen Training and Nutrition
//
//  Created by Daniel Van Cleave on 5/20/23.
//

//
//  Messages.swift
//  AUX
//
//  Created by Daniel Van Cleave on 5/26/22.
//

import SwiftUI

struct Messages: View {
    @State var selection1 = 1
    @State var selection2 = 1
    @State var selection3 = 1
    var body: some View{
        NavigationView{
            ZStack{
                Color("blue")
                    .ignoresSafeArea()
                    .opacity(0.5)
            
                VStack{
                    HStack{
                        Text("Select a Conversation to View")
                    }
                    Form{
                        Picker(selection: $selection1, label: Text("Blake")){
                            Text("Sent").tag(1)
                            Text("Hi Blake. Can you please help me workout? Thanks!").tag(2)
                        }
                        Picker(selection: $selection2, label: Text("Evan O'Grady")){
                            Text("Sent").tag(1)
                            Text("Hi Evan. You are a good friend - Daniel").tag(2)
                        }
                        Picker(selection: $selection3, label: Text("Jace")){
                            Text("Sent").tag(1)
                            Text("Hi Jace! It was nice to meet you! - Daniel").tag(2)
                        }
                        
                    }
                }
            }
            .navigationBarTitle("Messages")
        }
    }
}



struct Messages_Previews: PreviewProvider {
    static var previews: some View {
        Messages()
    }
}

