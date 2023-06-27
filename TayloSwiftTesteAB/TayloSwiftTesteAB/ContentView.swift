//
//  ContentView.swift
//  TayloSwiftTesteAB
//
//  Created by Gabriele Namie on 19/05/23.
//

import SwiftUI
import CoreData

struct ContentView: View {
    
    let columns = [
        GridItem(.flexible()),
        GridItem(.flexible()),
        GridItem(.flexible())
    ]

    var body: some View {
        NavigationView {
            ScrollView{
                LazyVGrid(columns: columns, spacing: 20) {
                    ForEach(Music.musicsList, id: \.self) { music in
                        NavigationLink {
                            Text("Item at \(music.musicName)")
                        } label: {
                            musicCell(music: music)
                        }
                    }
                }
            }
            .padding()
        }
    }
}

struct musicCell: View {
    let music: Music
    var body: some View {
        VStack{
            Image(music.imageAlbumName)
                .resizable()
                .scaledToFill()
                .clipped()
            Text(music.musicName)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
