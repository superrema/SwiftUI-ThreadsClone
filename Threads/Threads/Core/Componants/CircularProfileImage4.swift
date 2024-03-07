//
//  CircularProfileImage4.swift
//  Threads
//
//  Created by Remachann . on 29/02/1445 AH.
//

import SwiftUI

struct CircularProfileImage4: View {
    var body: some View {
        Image("rad")
            .resizable()
            .scaledToFit()
            .frame(width: 30 , height: 40)
            .clipShape(Circle())
    }
}

struct CircularProfileImage4_Previews: PreviewProvider {
    static var previews: some View {
        CircularProfileImage4()
    }
}
