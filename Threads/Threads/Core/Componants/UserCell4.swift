//
//  UserCell4.swift
//  Threads
//
//  Created by Remachann . on 29/02/1445 AH.
//

import SwiftUI

struct UserCell4: View {
    var body: some View {
        VStack {
            HStack{
               CircularProfileImage4()
                VStack(alignment: .leading){
                    Text("walt-123")
                        .fontWeight(.semibold)
                    Text("Artist")
                    
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

struct UserCell4_Previews: PreviewProvider {
    static var previews: some View {
        UserCell4()
    }
}
