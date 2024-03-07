//
//  CircularprofileImage.swift
//  Threads
//
//  Created by Remachann . on 22/02/1445 AH.
//

import SwiftUI

struct CircularprofileImage: View {
    var body: some View {
       
            Image("background2")
                .resizable()
                .scaledToFit()
                .frame(width: 40 , height: 40)
                .clipShape(Circle())
            
          
        
    }
}

struct CircularprofileImage_Previews: PreviewProvider {
    static var previews: some View {
        CircularprofileImage()
    }
}
