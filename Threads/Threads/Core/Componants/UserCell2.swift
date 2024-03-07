//
//  UserCell2.swift
//  Threads
//
//  Created by Remachann . on 29/02/1445 AH.
//

import SwiftUI

struct UserCell2: View {
    var body: some View {
        VStack {
            HStack{
               CircularProfileImage2()
                VStack(alignment: .leading){
                    Text("Anna")
                        .fontWeight(.semibold)
                    Text("iOS Developer")
                    
                }
                .font(.footnote)
                Spacer()
                
                Text("Follow")
                    .font(.subheadline)
                    .fontWeight(.semibold)
                    .frame(width: 100, height: 32)
                    .overlay {
                        RoundedRectangle(cornerRadius: 10)
                            .stroke( Color(.systemGray4), lineWidth: 1)
                    }
                
            }
            .padding(.horizontal)
        }
    }
}

struct UserCell2_Previews: PreviewProvider {
    static var previews: some View {
        UserCell2()
    }
}
