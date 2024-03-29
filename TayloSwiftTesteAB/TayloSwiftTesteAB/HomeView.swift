//
//  ContentView.swift
//  TayloSwiftTesteAB
//
//  Created by Gabriele Namie on 19/05/23.
//

import SwiftUI

struct HomeView: View {
    var viewModel = HomeViewModel()
    @State var isLoading = true
    @State var columns = [
        GridItem(.flexible(), spacing: 8, alignment: .top),
        GridItem(.flexible(), spacing: 8, alignment: .top),
        GridItem(.flexible(), spacing: 8, alignment: .top)
    ]
    @State var color: Color = .black

    var body: some View {
        NavigationView {
            if !isLoading {
                ScrollView {
                    LazyVGrid(columns: columns, spacing: 16) {
                        ForEach(Music.musicsList, id: \.self) { music in
                            NavigationLink {
                                DetailsView(music: music, color: color)
                                    .onAppear{
                                        Task{
                                            await viewModel.sendEvent(event: Event(action: "click", userId: "1"))
                                            }
                                        Task{
                                            await viewModel.sendEvent(event: Event(action: "App time: \(AppClock.shared.getTime())", userId: "1"))
                                        }
                                    }
                            } label: {
                                musicCell(music: music)
                            }
                        }
                    }
                    .navigationBarTitle("Taylor Swift", displayMode: .automatic)
                    .padding(.vertical)
                }
                .frame(maxHeight: 1200)
            } else {
                Text("Loading")
            }
            
        } .accentColor(Color.white)
        .task {
            columns = await viewModel.getColluns()
            color = await viewModel.getBackgroundColor()
            isLoading = false
        }
        .refreshable {
            Task{
                isLoading = true
                columns = await viewModel.getColluns()
                color = await viewModel.getBackgroundColor()
                isLoading = false
            }
        }
        .onAppear{
            AppClock.shared.startTime()
        }
    }
}

struct musicCell: View {
    let music: Music
    var body: some View {
        VStack{
            Image(music.imageAlbumName)
                .resizable()
                .cornerRadius(8.0)
                .scaledToFit()
                .clipped()
                .padding(10)
            
            Text(music.musicName)
                .foregroundColor(Color.white)
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
