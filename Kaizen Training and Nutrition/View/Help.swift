//
//  Help.swift
//  Kaizen Training and Nutrition
//
//  Created by Daniel Van Cleave on 5/20/23.
//

import SwiftUI

struct Help: View {
    @State var submit = false
    @State var firstName = ""
    @State var lastName = ""
    @State var email = ""
    @State var message = ""
    
    var body: some View{
        NavigationView{
            ZStack{
                Color("white")
                    .ignoresSafeArea()
                    .opacity(0.5)
                
                VStack{
                    Text("Please fill out this Form to submit a ticket.")
                    Form{
                        Section{
                            TextField("First Name",
                                      text: $firstName)
                            TextField("Last Name", text: $lastName)
                            TextField("Email", text: $email)
                        }
                        
                        Section(header: Text("Enter a Message"), footer: Text("Press submit to send your message")) {
                            TextField("", text: $message)
                                .frame(height: 250)
                    }
                }
                   
                Button(action: {self.submit.toggle()
                    firstName = ""
                    lastName = ""
                    email = ""
                    message = ""
                })  {
                    Text("Submit")
                }
                Spacer()
                    .frame(height: 40)
                .alert("Your inquiry has been sent!", isPresented: $submit){
                        Button("OK", role: .cancel){}
                    }
                }
            }
            .navigationBarTitle("Help")
        }

    }
}


struct Help_Previews: PreviewProvider {
    static var previews: some View {
        Help()
    }
}
