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
                        Button(action: {}) {
                            Image(systemName: "arrow.down.circle.fill")
                                .foregroundColor(Color.black)
                        }
                        Button(action: {}) {
                            Image(systemName: "person.fill.badge.plus")
                                .foregroundColor(Color.black)
                        }
                        Spacer()
                        Button(action: {}) {
                            Image(systemName: "play.circle.fill")
                                .foregroundColor(Color.yellow)
                        }
                        .font(.title)
                    }
                    .padding()
                    VStack {
                        Text("Playlist Eminem")
                            .font(.title)
                            .frame(maxWidth: .infinity, alignment: .leading)
                            .padding(.top, 20)
                        Text("Essa playlist é destinada aos melhores Jt. Leaners e Stans do Planeta ADDA!")
                            .frame(maxWidth: .infinity, alignment: .leading)
                        HStack {
                            Image("profile")
                            Text("Playlist de Eminem")
                                .frame(maxWidth: .infinity, alignment: .leading)
                        }
                    }
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
