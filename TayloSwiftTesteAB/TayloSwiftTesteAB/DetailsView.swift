//
//  DetailsView.swift
//  TayloSwiftTesteAB
//
//  Created by Gabriele Namie on 04/09/23.
//

import SwiftUI

struct DetailsView: View {
    
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>

    var btnBack : some View { Button(action: {
        AppClock.shared.startTime()
        self.presentationMode.wrappedValue.dismiss()
        }) {
            HStack {
                Image(systemName:"chevron.left") // set image here
                .aspectRatio(contentMode: .fit)
                .foregroundColor(.white)
                Text("Go back")
            }
        }
    }
    
    var music: Music
    
    var body: some View {
        ZStack(alignment: .center) {
            Image(music.imageAlbumName)
                .resizable()
                .ignoresSafeArea()
                .blur(radius: 20)
            Color.black.opacity(0.5)
                .ignoresSafeArea()
            
            VStack(alignment: .center) {
                Image(music.imageAlbumName)
                    .resizable()
                    .cornerRadius(8.0)
                    .scaledToFit()
                    .padding(16)
                Text(music.musicName)
                    .font(.title2).bold()
                Text(music.albumName)
                    .font(.title3)
                    .padding(.bottom)
            }
        }
        .navigationBarBackButtonHidden(true)
        .navigationBarItems(leading: btnBack)
    }
}
