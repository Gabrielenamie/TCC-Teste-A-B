//
//  ContentView.swift
//  TayloSwiftTesteAB
//
//  Created by Gabriele Namie on 19/05/23.
//

import SwiftUI
import CoreData

struct HomeView: View {
    var viewModel = HomeViewMode()
    @State var isLoading = true
    @State var columns = [
        GridItem(.flexible()),
        GridItem(.flexible()),
        GridItem(.flexible())
    ]

    var body: some View {
        NavigationView {
            if !isLoading{
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
            } else {
                Text("loading")
            }
            
        }.task {
            let isVaration = await viewModel.fecthExperimentation()
            if isVaration {
                columns = [
                    GridItem(.flexible()),
                    GridItem(.flexible())
                ]
            }
            isLoading = false
        }
        .refreshable {
            Task{
                isLoading = true
                let isVaration = await viewModel.fecthExperimentation()
                if isVaration {
                    columns = [
                        GridItem(.flexible()),
                        GridItem(.flexible())
                    ]
                } else {
                    columns = [
                        GridItem(.flexible()),
                        GridItem(.flexible()),
                        GridItem(.flexible())
                    ]
                }
                isLoading = false
            }
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

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
