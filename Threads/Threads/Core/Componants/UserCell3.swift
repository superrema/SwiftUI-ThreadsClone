//
//  UserCell3.swift
//  Threads
//
//  Created by Remachann . on 29/02/1445 AH.
//

import SwiftUI

struct UserCell3: View {
    var body: some View {
        VStack {
            HStack{
               CircularProfileImage3()
                VStack(alignment: .leading){
                    Text("User_00")
                        .fontWeight(.semibold)
                    Text("web Developer")
                    
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

struct UserCell3_Previews: PreviewProvider {
    static var previews: some View {
        UserCell3()
    }
}
