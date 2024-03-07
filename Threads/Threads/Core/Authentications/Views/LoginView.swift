//
//  LoginView.swift
//  Threads
//
//  Created by Remachann . on 13/02/1445 AH.
//

import SwiftUI

struct LoginView: View {
    @State var email = ""
    @State var password = ""
    var body: some View {
        NavigationStack{
            
            VStack{
                Spacer()
                Image("threads")
                    .resizable()
                    .frame(width: 120, height: 140)
                    .padding()
                VStack{
                    TextField("Enter Your Email", text: $email)
                        .modifier(ThreadsTextFieldModifier())
                    SecureField("Enter Your Password", text: $password)
                        .modifier(ThreadsTextFieldModifier())
                }
                NavigationLink{
                    Text("Forgot Password?")
                }label: {
                    Text("Forgot Password?")
                        .font(.footnote)
                        .fontWeight(.semibold)
                        .padding(.vertical)
                        .padding(.trailing, 28)
                        .foregroundColor(.black)
                        .frame(maxWidth: .infinity, alignment: .trailing)
                        
                }
               
                Button{
                
                }label: {
                    Text("Login")
                        .modifier(ThreadsButtonModifier())
                }
                Spacer()
                Divider()
                NavigationLink {
                   RegistrationView()
                        .navigationBarBackButtonHidden(true)
                } label: {
                    HStack(spacing: 3){
                        Text("Don't have an account?")
                        
                        Text("Sign up")
                            .fontWeight(.bold)
                    }
                    .foregroundColor(.black)
                    .font(.footnote)
                }
                .padding(.vertical, 16)

            }
        }
    }
}
struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}
