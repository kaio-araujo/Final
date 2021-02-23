//
//  ClubHeader.swift
//  Final
//
//  Created by Kaio Guanais on 2021-02-19.
//

import SwiftUI

struct ClubHeader: View {
    var body: some View {
        HStack(spacing: 18) {
            Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                Image(systemName: "chevron.down")
                    .font(.system(size: 24))
                    .accentColor(.primary)
            })
            
            Text("All rooms")
            
            Spacer()
            
            Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                Image(systemName: "folder")
                    .font(.system(size: 24))
                    .padding(.horizontal)
                    .accentColor(.primary)
            })
            
            Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                Image("photo")
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: 36,height: 36)
                    .clipShape(Circle())
            })
        }
        .font(.headline)
    }
}
