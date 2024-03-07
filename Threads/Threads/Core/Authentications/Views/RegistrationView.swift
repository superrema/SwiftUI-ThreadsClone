//
//  RegistrationView.swift
//  Threads
//
//  Created by Remachann . on 14/02/1445 AH.
//

import SwiftUI

struct RegistrationView: View {
    @State var email = ""
    @State var password = ""
    @State var fullName = ""
    @State var userName = ""
    @Environment(\.dismiss) var dismiss
    var body: some View {
        NavigationStack {
            VStack {
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
                    TextField("Enter Your full name", text: $fullName)
                        .modifier(ThreadsTextFieldModifier())
                    TextField("Enter Your Username", text: $userName)
                        .modifier(ThreadsTextFieldModifier())
                }
                Button{
                
                }label: {
                    Text("Sign up")
                        .modifier(ThreadsButtonModifier())
                }
                Spacer()
                Divider()
                Button(action: {
                    dismiss()
                }, label:{
                        HStack(spacing: 3){
                            Text("Already have an account?")
                            
                            Text("Sign in")
                                .fontWeight(.bold)
                        }
                        .foregroundColor(.black)
                        .font(.footnote)
                
                
                
            }
                       )
                .padding(.vertical, 16)
        }
    }
}
                       }
struct RegistrationView_Previews: PreviewProvider {
    static var previews: some View {
        RegistrationView()
    }
}
