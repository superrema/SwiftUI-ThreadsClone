//
//  Profile.swift
//  Threads
//
//  Created by Remachann . on 17/02/1445 AH.
//

import SwiftUI

struct Profile: View {
    @State private var selectedFilter: ProfileThreadFilter = .threads
    @Namespace var animation
    var body: some View {
        ScrollView(showsIndicators: false) {
            //Bio and stats
            VStack(spacing: 20) {
                HStack(alignment: .top) {
                    VStack(alignment: .leading,spacing: 12){
                        // Fullname and username
                        VStack(alignment: .leading, spacing: 4){
                            Text("Rory")
                                .font(.title2)
                                .fontWeight(.semibold)
                            Text("lalautimate")
                                .font(.subheadline)
                        }
                        Text("iOS Developer")
                            .font(.footnote)
                        Text(" 2 followers")
                            .font(.caption)
                            .foregroundColor(.gray)
                    }
                    Spacer()
                    CircularprofileImage()
                }
                Button {
                    
                } label: {
                    Text("Follow")
                        .font(.subheadline)
                        .fontWeight(.semibold)
                        .foregroundColor(.white)
                        .frame(width: 352, height: 32)
                        .background(.black)
                        .cornerRadius(8)
                }
                // user content list view
                VStack{
                    HStack{
                        ForEach(ProfileThreadFilter.allCases) { filter in
                            
                            VStack{
                                Text(filter.title)
                                    .font(.subheadline)
                                    .fontWeight(selectedFilter == filter ? .semibold : .regular)
                                
                                if selectedFilter == filter {
                                    Rectangle()
                                        .foregroundColor(.black)
                                        .frame(width: 180, height: 1)
                                        .matchedGeometryEffect(id: "item", in: animation)
                                } else {
                                    Rectangle()
                                        .foregroundColor(.clear)
                                        .frame(width: 180, height: 1)
                                }
                            }
                            .onTapGesture {
                                withAnimation(.spring()){
                                    selectedFilter = filter
                                }
                            }
                        }
                    }
                    LazyVStack{
                        ForEach(0 ... 10 , id: \.self) { thread in
                            ThreadCel()
                        }
                    }
                }
                .padding(.vertical, 8)
            }
            .padding(.horizontal)
        }
        
    }
}

struct Profile_Previews: PreviewProvider {
    static var previews: some View {
        Profile()
    }
}
