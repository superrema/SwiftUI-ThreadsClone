//
//  ProfileThreadFilter.swift
//  Threads
//
//  Created by Remachann . on 22/02/1445 AH.
//

import Foundation

enum ProfileThreadFilter: Int, CaseIterable , Identifiable{
    case threads 
    case replies
    
    var title: String{
        switch self{
        case.threads: return "Threads"
        case .replies:
            return "Replies"
        }
    }
    var id: Int { return self.rawValue}
}
