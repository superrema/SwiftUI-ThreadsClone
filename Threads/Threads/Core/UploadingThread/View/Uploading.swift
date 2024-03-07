//
//  Uploading.swift
//  Threads
//
//  Created by Remachann . on 17/02/1445 AH.
//

import SwiftUI

struct Uploading: View {
    @State var caption = ""
    @Environment(\.dismiss) var dismiss
    var body: some View {
        NavigationStack{
            VStack{
                HStack(alignment: .top){
                    CircularprofileImage()
                    VStack(alignment: .leading, spacing: 4){
                        Text("Rory")
                            .fontWeight(.semibold )
                        TextField("Start a thread", text: $caption, axis: .vertical)
                    }
                    .font(.footnote)
                    Spacer()
                    
                    if !caption.isEmpty {
                        Button {
                          caption = ""
                        } label: {
                            Image(systemName: "xmark")
                                .resizable()
                                .frame(width: 12, height: 12)
                                .foregroundColor(.gray)
                        }
                    }

                }
                Spacer()
            }
            .padding()
            .navigationTitle("New Thread")
            .navigationBarTitleDisplayMode(.inline)
            .toolbar{
                ToolbarItem(placement: .navigationBarLeading){
                    Button("Cancel"){
                        dismiss()
                    }
                    .font(.subheadline)
                    .foregroundColor(.black)
                }
            }
            .toolbar{
                ToolbarItem(placement: .navigationBarTrailing){
                    Button("Post"){
                        
                    }
                    .opacity(caption.isEmpty ? 0.5 : 1.0)
                    .disabled(caption.isEmpty)
                    .font(.subheadline)
                    .fontWeight(.semibold)
                    .foregroundColor(.black)
                }
            }
        }
    }
}

struct Uploading_Previews: PreviewProvider {
    static var previews: some View {
        Uploading()
    }
}
