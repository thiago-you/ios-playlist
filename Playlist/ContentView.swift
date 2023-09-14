//
//  ContentView.swift
//  Playlist
//
//  Created by user241334 on 9/9/23.
//

import SwiftUI

struct ContentView: View {
    let dataModel = DataModel()
    
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
                        .font(.largeTitle)
                    }
                    .padding()
                    VStack {
                        Text("Playlist Eminem")
                            .font(.title)
                            .frame(maxWidth: .infinity, alignment: .leading)
                            .padding(.top, 20)
                            .padding(.bottom, 5)
                        Text("Essa playlist é destinada aos melhores Jt. Leaners e Stans do Planeta ADDA!")
                            .fixedSize(horizontal: false, vertical: true)
                            .frame(maxWidth: .infinity, alignment: .leading)
                            .padding(.bottom, 10)
                        HStack {
                            Image("profile")
                                .resizable()
                                .frame(width: 50, height: 30)
                                .clipShape(Circle())
                            Text("Playlist de Eminem")
                                .font(.subheadline)
                                .frame(maxWidth: .infinity, alignment: .leading)
                        }
                        .padding(.leading, -10)
                        .padding(.bottom, 10)
                        ForEach(dataModel.covers) { cover in
                            HStack {
                                Image(cover.image)
                                    .resizable()
                                    .font(.largeTitle)
                                    .bold()
                                    .symbolRenderingMode(.monochrome)
                                    .scaledToFit()
                                    .frame(width: 50, height: 50)
                                    .padding(.trailing, 10)
                                    .padding(.bottom, 10)
                                VStack(alignment: .leading) {
                                    Text(cover.title)
                                        .font(.title2)
                                        .bold()
                                    Text(cover.description)
                                }
                            }
                            .frame(maxWidth: .infinity, alignment: .leading)
                            .background(.white)
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
