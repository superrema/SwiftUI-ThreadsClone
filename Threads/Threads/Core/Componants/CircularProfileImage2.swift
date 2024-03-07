//
//  CircularProfileImage2.swift
//  Threads
//
//  Created by Remachann . on 29/02/1445 AH.
//

import SwiftUI

struct CircularProfileImage2: View {
    var body: some View {
        Image("anna")
            .resizable()
            .scaledToFit()
            .frame(width: 40 , height: 40)
            .clipShape(Circle())
        
    }
}

struct CircularProfileImage2_Previews: PreviewProvider {
    static var previews: some View {
        CircularProfileImage2()
    }
}
