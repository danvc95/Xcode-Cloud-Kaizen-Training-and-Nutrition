//
//  ViewProfile.swift
//  Kaizen Training and Nutrition
//
//  Created by Daniel Van Cleave on 5/20/23.
//

import SwiftUI


struct ViewProfile: View {
    @State var submit = false
    
    var body: some View{
        NavigationView{
            ZStack{
                Image("Sun")
                    .resizable()

                VStack{
                    Spacer()
                        .frame(height: 30)
                    Image("Daniel")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 200, height: 200)
                        .cornerRadius(2000)
                    
                        Spacer()
                            .frame(height: 30)
                    Form{
                        Text("Name      Daniel Van Cleave")
                        Text("Email:     dvancleave@eou.edu")
                        Text("Phone Number:    541-626-1448")
                        Text("Subscirption:      Free Plan")
                    }
                    
                    Button(action: {self.submit.toggle()
                    })  {
                        Text("Edit")
                    }
                    
                    Spacer()
                        .frame(height: 70)
                    
                    .alert("This Feature is coming Soon!", isPresented: $submit){
                            Button("OK", role: .cancel){}
                    }

                }
            .navigationBarTitle("Profile")
            }
        }
    }
}


struct ViewProfile_Previews: PreviewProvider {
    static var previews: some View {
        ViewProfile()
    }
}
