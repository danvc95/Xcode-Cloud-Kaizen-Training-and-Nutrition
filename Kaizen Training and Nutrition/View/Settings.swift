//
//  Settings.swift
//  Kaizen Training and Nutrition
//
//  Created by Daniel Van Cleave on 5/20/23.
//

import SwiftUI

struct Settings: View {
    @State var submit = false
    @State var toggle1IsOn: Bool = true
    @State var toggle2IsOn: Bool = true
    @State var idNumber = ""
    @State var username = ""
    @State var password = ""
    @State var selection = 1
    
    var body: some View{
        NavigationView{
            ZStack{
            Color("blue")
                .ignoresSafeArea()
                .opacity(0.5)
            Form{

                Toggle(
                    isOn: $toggle1IsOn,
                    label: {
                        Text("Dark Mode")
                            .frame(maxWidth: .infinity, alignment: .leading)
                    })
                    .toggleStyle(SwitchToggleStyle(tint: Color("red")))
                    .frame(alignment: .leading)

                
                Toggle(
                    isOn: $toggle2IsOn,
                    label: {
                        Text("Recieve Notifications")
                            .frame(maxWidth: .infinity, alignment: .leading)
                    })

                    .toggleStyle(SwitchToggleStyle(tint: Color("red")))
                    .frame(alignment: .leading)
                
                Picker(selection: $selection, label: Text("App Version")){
                    Text("Release 1").tag(1)
                    Text("Release 2").tag(2)
                }
                    
                Section(header:
                    Text("ID Number")) {
                    TextField("ID", text: $idNumber)
                        .textFieldStyle(.roundedBorder)
                }
                Section(header:
                    Text("UserName")) {
                    TextField("username", text: $username)
                        .textFieldStyle(.roundedBorder)
                }
                Section(header:
                    Text("Password")) {
                    SecureField("password", text: $password)
                        .textFieldStyle(.roundedBorder)
                }
                
                
                Button(action: {self.submit.toggle()
                })  {
                    Text("Connect to Blake")
                }
                
                Spacer()
                    .frame(height: 70)
                
                .alert("This Feature is coming Soon!", isPresented: $submit){
                        Button("OK", role: .cancel){}
                }
            }
                
            }
            
            .navigationBarTitle("Settings")
            
        }
    }
    
}
    


struct Setting_Previews: PreviewProvider {
    static var previews: some View {
        Settings()
    }
}
 
