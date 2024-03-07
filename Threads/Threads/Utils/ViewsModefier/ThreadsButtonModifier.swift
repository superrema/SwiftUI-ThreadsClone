//
//  ThreadsButtonModifier.swift
//  Threads
//
//  Created by Remachann . on 15/02/1445 AH.
//

import SwiftUI

struct ThreadsButtonModifier: ViewModifier{
    func body(content: Content) -> some View {
        content
        .font(.subheadline)
        .fontWeight(.semibold)
        .foregroundColor(.white)
        .frame(width: 352, height: 44)
        .background(.black)
        .cornerRadius(8)
    }
}
