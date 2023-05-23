//
//  Walking.swift
//  Kaizen Training and Nutrition
//
//  Created by Daniel Van Cleave on 5/22/23.
//

import SwiftUI
import WebKit

struct PDFView: UIViewRepresentable {
    let url: URL
    
    func makeUIView(context: Context) -> WKWebView {
        return WKWebView()
    }
    
    func updateUIView(_ uiView: WKWebView, context: Context) {
        let request = URLRequest(url: url)
        uiView.load(request)
    }
}




class Model: ObservableObject {
    @Published var pushed = false
}

struct Walking: View {
    @EnvironmentObject var model: Model
    
    var body: some View{
        NavigationView{
            ZStack(){
                
                Color("blue")
                    .ignoresSafeArea()
                    .opacity(0.5)
                
                VStack(alignment: .center ,spacing: 1){
                    
                    
                    Image("Kaizen Logo")
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .frame(width: getRect().width - 300, height: 100)
                    
               
                    Text("Kaisen Training and Nutrition")
                        .fontWeight(.bold)
                    
                    Group{
                        Spacer()
                            .frame(height: 100)
                        
                        Text("Walking:")
                            .font(.title)
                            .fontWeight(.bold)
                        
                        Spacer()
                            .frame(height: 10)
                        
                        Image("walking")
                            .resizable()
                            .aspectRatio(CGSize(width: 6, height: 4), contentMode: .fill)
                            .frame(width: getRect().width - 40, height: 230)
                            .cornerRadius(20)
                        
                        
                        
                        
                        Spacer()
                            .frame(height: 180)
                        
                    }
                    
                    
                    
                }
                
            }
            
        }.navigationBarBackButtonHidden(true)
            
            
    }

    
    struct MyBackButton: View {
        let label: String
        let closure: () -> Void

        var body: some View {
            
            NavigationLink(destination: Walking()) {
                HStack(spacing: 4) {
                    Image(systemName: "chevron.left")
                    Text("Back")
                    }
            }
            
        }
    }
    
    
}





struct Walking_Previews: PreviewProvider {
    static var previews: some View {
        Walking()
    }
}
