//
//  ClubFooter.swift
//  Final
//
//  Created by Kaio Guanais on 2021-02-19.
//

import SwiftUI

struct ClubFooter: View {
    var body: some View {
        HStack (spacing: 16) {
            RegularButton(title: "Leave quietly")
            Spacer()
            RoundButton(iconName: "plus")
            RoundButton(iconName: "hand.raised")
            
        }.padding()
    }
}


