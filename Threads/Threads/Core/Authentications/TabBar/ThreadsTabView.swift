//
//  ThreadsTabView.swift
//  Threads
//
//  Created by Remachann . on 17/02/1445 AH.
//

import SwiftUI
struct ThreadsTabView: View {
    @State private var SelectedTab = 0
    @State var showCreateThreadView = false
    

    var body: some View {
        TabView(selection: $SelectedTab) {
            FeedView()
                .tabItem {
                    Image(systemName: SelectedTab == 0 ? "house.fill" : "house")
                        .environment(\.symbolVariants, SelectedTab == 0 ? .fill : .none)
                }
                .onAppear{
                    SelectedTab = 0}
                .tag(0)
                ExploreView()
                .tabItem {
                    Image(systemName: "magnifyingglass")
                }
                .onAppear{
                    SelectedTab = 1}
                .tag(1)
           Text("")
                .tabItem {
                    Image(systemName: "plus")
                }
                .onAppear{
                    SelectedTab = 2}
                .tag(2)
           Activity()
                .tabItem {
                    Image(systemName: SelectedTab == 3 ? "heart.fill" : "suit.heart")
                        .environment(\.symbolVariants, SelectedTab == 3 ? .fill : .none)
                }
                .onAppear{
                    SelectedTab = 3}
                .tag(3)
           
            Profile()
                .tabItem {
                    Image(systemName: SelectedTab == 4 ? "person.fill" : "person")
                        .environment(\.symbolVariants, SelectedTab == 4 ? .fill : .none)
                }
                .onAppear{
                    SelectedTab = 4}
                .tag(4)
        }
        .onChange(of: SelectedTab, perform: { newValue in
            showCreateThreadView = SelectedTab == 2
        })
        .sheet(isPresented:$showCreateThreadView, onDismiss: {
            SelectedTab = 0
        }, content: {
            Uploading()
        })
        .tint(.black)
    }
}

struct ThreadsTabView_Previews: PreviewProvider {
    static var previews: some View {
        ThreadsTabView()
    }
}
