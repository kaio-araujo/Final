//
//  CustomButton.swift
//  Final
//
//  Created by Kaio Guanais on 2021-02-19.
//

import SwiftUI

//MARK:- Custom Button

struct RegularButton: View {
    var title: String
    
    var body: some View {
        Button(action : {}) {
           HStack {
               Text("✌️")
                 .font(.headline)
                 .font(.system(size: 48))
               Text(title)
                 .font(.headline)
                 .foregroundColor(.red)
           }
           .padding()
       }
        .background(Color.secondary.opacity(0.2))
        .clipShape(Capsule())
    }
    
    init(title: String) {
        self.title = title
    }
}

struct RoundButton: View {
    var icon: String
    
    var body: some View {
        Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
            Image(systemName: icon).font(.system(size: 20))
                .padding()
                .accentColor(.primary)
                .background(Color.secondary.opacity(0.2)).clipShape(Circle())
        })
    }
    
    init(iconName: String) {
        self.icon = iconName
    }
}


