//
//  ThreadsTextFieldModifier.swift
//  Threads
//
//  Created by Remachann . on 15/02/1445 AH.
//

import SwiftUI


struct ThreadsTextFieldModifier: ViewModifier {
    
    func body(content: Content) -> some View {
        content
            .font(.headline)
            .padding(12)
            .background(Color(.systemGray6))
            .cornerRadius(10)
            .padding(.horizontal, 24)
    }
}
