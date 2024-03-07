//
//  UserCell.swift
//  Threads
//
//  Created by Remachann . on 22/02/1445 AH.
//

import SwiftUI

struct UserCell: View {
    var body: some View {
        VStack {
            HStack{
                CircularprofileImage()
                VStack(alignment: .leading){
                    Text("Reema")
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

struct UserCell_Previews: PreviewProvider {
    static var previews: some View {
        UserCell()
    }
}
