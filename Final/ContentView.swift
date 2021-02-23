//
//  ContentView.swift
//  Final
//
//  Created by Kaio Guanais on 2021-02-19.
//

import SwiftUI

struct ContentView: View {
    
    var body: some View {
        ZStack {
            Color("BGColor").edgesIgnoringSafeArea(.all)
            VStack {
                ClubHeader()
                    .padding()
                ClubBody()
                ClubFooter()
            }
            .padding(.top, 40).edgesIgnoringSafeArea(.vertical)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            ContentView()
                .preferredColorScheme(.light)
            ContentView()
                .preferredColorScheme(.dark)
        }
    }
}


struct ClubBody: View {
    var body: some View {
        ScrollView(.vertical) {
            VStack (alignment: .leading, spacing: 24) {
                HStack (alignment: .top) {
                    VStack (alignment: .leading, spacing: 16) {
                        Text("SWAN DIVE 🏡")
                        Text("Live Coaching with Netflix cofounder Marc Randolph").font(.headline)
                    }.fixedSize(horizontal: false, vertical: true).frame(height: 60)
                    Spacer()
                    Image(systemName: "ellipsis").font(.system(size: 20))
                }.padding(.vertical)
                
                ForEach(1..<3) { _ in
                    HStack{
                        ForEach(1..<4) { _ in
                            Spacer()
                            VStack {
                                Image(systemName: "photo").resizable().aspectRatio(contentMode: .fill).frame(width: 80, height: 80).clipShape(RoundedRectangle(cornerRadius: 30))
                                Text("Steve").font(.subheadline).bold()
                            }
                            Spacer()
                        }
                    }
                }
                
                Text("Followed by the speakers").font(.footnote).foregroundColor(.secondary)
                
                ForEach(1..<10) { _ in
                    HStack{
                        ForEach(1..<5) { _ in
                            Spacer()
                            VStack {
                                Image("photo").resizable().aspectRatio(contentMode: .fill).frame(width: 54, height: 54).clipShape(RoundedRectangle(cornerRadius: 18))
                                Text("Steve").font(.footnote).bold()
                            }
                            Spacer()
                        }
                    }
                }
            }.padding(.all, 24)
        }
        .background(Color(UIColor.systemBackground))
        .clipShape(RoundedRectangle(cornerRadius: 24))
    }
}
