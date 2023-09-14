//
//  ContentView.swift
//  Playlist
//
//  Created by user241334 on 9/9/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        GeometryReader { reader in
            ZStack {
                VStack {
                    Image("cover 1")
                        .resizable()
                        .frame(width: 250, height: 250)
                        .padding(.top, 20)
                    HStack {
                        Image(systemName: "arrow.down.circle.fill")
                        Image(systemName: "person.fill.badge.plus")
                        Spacer()
                        Image(systemName: "play.circle.fill")
                    }
                    .padding()
                    Spacer()
                }
                .padding()
                .frame(maxWidth: .infinity, minHeight: reader.size.height)
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
