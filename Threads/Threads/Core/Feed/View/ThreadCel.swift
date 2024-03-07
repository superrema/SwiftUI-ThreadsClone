//
//  ThreadCel.swift
//  Threads
//
//  Created by Remachann . on 17/02/1445 AH.
//

import SwiftUI

struct ThreadCel: View {
    var body: some View {
        VStack{
            HStack(alignment: .top, spacing: 12){
                CircularprofileImage()
                VStack(alignment: .leading,spacing: 4){
                    HStack{
                        Text("Reema")
                            .font(.footnote)
                            .fontWeight(.semibold)
                        Spacer()
                        Text(" 10m")
                            .font(.caption)
                            .foregroundColor(Color(.systemGray3))
                        Button {
                            
                        } label: {
                            Image(systemName: "ellipsis")
                                .foregroundColor(Color(.darkGray))
                        }

                    }
                        Text("Good Morning")
                            .font(.footnote)
                            .multilineTextAlignment(.leading)
                    HStack(spacing: 16){
                        Button {
                            
                        } label: {
                            Image(systemName: "heart")
                        }
                        Button {
                            
                        } label: {
                            Image(systemName: "bubble.right")
                        }
                        Button {
                            
                        } label: {
                            Image(systemName: "arrow.rectanglepath")
                        }
                        Button {
                            
                        } label: {
                            Image(systemName: "paperplane")
                        }
                        

                    }
                    .foregroundColor(.black)
                    .padding(.vertical,8)
                    
                }
            }
            Divider()
        }
        .padding()
    }
}

struct ThreadCel_Previews: PreviewProvider {
    static var previews: some View {
        ThreadCel()
    }
}
