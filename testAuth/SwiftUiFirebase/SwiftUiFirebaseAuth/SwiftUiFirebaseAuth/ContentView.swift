//
//  ContentView.swift
//  SwiftUiFirebaseAuth
//
//  Created by Tim Mailman on 2022-02-01.
//

import SwiftUI

struct ContentView: View {
    @State var email = ""
    
    
    var body: some View {
        NavigationView{
            VStack{
                Image("logo")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 150, height: 150)
                
                VStack{
                    TextField("Email Address", text: $email)
                        .padding()
                        .background(Color(.secondarySystemBackground))

                    
                    SecureField("Email Address", text: $email)
                        .padding()
                        .background(Color(.secondarySystemBackground))

                    Button(action: {
                        
                    }, label: {
                        Text("Sign in")
                            .foregroundColor(Color.white)
                            .frame(width: 200, height: 50)
                            .background(Color.blue)
                            .cornerRadius(8)
                    })
                    
                }
                .padding()
                
                Spacer()
            }
            .navigationTitle("Sign In")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
