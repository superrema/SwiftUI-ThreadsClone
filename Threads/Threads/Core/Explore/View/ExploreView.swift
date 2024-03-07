//
//  ExploreView.swift
//  Threads
//
//  Created by Remachann . on 17/02/1445 AH.
//

import SwiftUI

struct ExploreView: View {
    @State private var searchText = ""
    var body: some View {
        NavigationStack{
            ScrollView{
                LazyVStack{
                    ForEach(0 ... 0, id: \.self) { user in
                        VStack {
                            UserCell()
                           
                        }
                        Divider()
                        VStack{
                            UserCell2()
                        }
                        Divider()
                        VStack{
                            UserCell3()
                        }
                        Divider()
                        VStack{
                            UserCell4()
                        }
                        Divider()
                    }
                    .padding(.vertical, 4)
                }
            }
            .navigationTitle("Search")
            .searchable(text: $searchText , prompt: "Search")
        }
    }
}

struct ExploreView_Previews: PreviewProvider {
    static var previews: some View {
        ExploreView()
    }
}
