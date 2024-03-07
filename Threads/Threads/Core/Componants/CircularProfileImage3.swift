//
//  CircularProfileImage3.swift
//  Threads
//
//  Created by Remachann . on 29/02/1445 AH.
//

import SwiftUI

struct CircularProfileImage3: View {
    var body: some View {
        Image("petterpan1")
            .resizable()
            .scaledToFit()
            .frame(width: 30 , height: 40)
            .clipShape(Circle())
    }
}

struct CircularProfileImage3_Previews: PreviewProvider {
    static var previews: some View {
        CircularProfileImage3()
    }
}
