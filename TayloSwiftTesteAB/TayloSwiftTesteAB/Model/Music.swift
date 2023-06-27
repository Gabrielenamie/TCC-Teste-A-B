//
//  File.swift
//  TayloSwiftTesteAB
//
//  Created by Vitor Cheung on 19/05/23.
//

import Foundation
struct Music: Codable, Hashable{
    var musicName: String
    var albumName: String
    var imageAlbumName: String
    
    static var musicsList = [
        Music(musicName: "dancing with our hands tied", albumName: "reputation", imageAlbumName: "reputation"),
        Music(musicName: "call it what you want", albumName: "reputation", imageAlbumName: "reputation"),
        Music(musicName: "king of my heart", albumName: "reputation", imageAlbumName: "reputation"),
        Music(musicName: "...ready for it?", albumName: "reputation", imageAlbumName: "reputation"),
        Music(musicName: "so it goes...", albumName: "reputation", imageAlbumName: "reputation"),
        Music(musicName: "dress", albumName: "reputation", imageAlbumName: "reputation"),
        Music(musicName: "sweet nothings", albumName: "midnights", imageAlbumName: "midnights"),
        Music(musicName: "paris", albumName: "midnights", imageAlbumName: "midnights"),
        Music(musicName: "you're on your own, kid", albumName: "midnights", imageAlbumName: "midnights"),
        Music(musicName: "hits different", albumName: "midnights", imageAlbumName: "midnights"),
        Music(musicName: "vigilante shit", albumName: "midnights", imageAlbumName: "midnights"),
        Music(musicName: "bejeweled", albumName: "midnights", imageAlbumName: "midnights"),
        Music(musicName: "treacherous", albumName: "red", imageAlbumName: "red"),
        Music(musicName: "the very first night", albumName: "red", imageAlbumName: "red"),
        Music(musicName: "all too well", albumName: "red", imageAlbumName: "red"),
        Music(musicName: "holy ground", albumName: "red", imageAlbumName: "red"),
        Music(musicName: "the lucky one", albumName: "red", imageAlbumName: "red"),
        Music(musicName: "nothing new", albumName: "red", imageAlbumName: "speaknow"),
        Music(musicName: "speak now", albumName: "speak now", imageAlbumName: "speaknow"),
        Music(musicName: "long live", albumName: "speak now", imageAlbumName: "speaknow"),
        Music(musicName: "mine", albumName: "speak now", imageAlbumName: "speaknow"),
        Music(musicName: "enchanted", albumName: "speak now", imageAlbumName: "speaknow"),
        Music(musicName: "the story of us", albumName: "speak now", imageAlbumName: "speaknow"),
        Music(musicName: "style", albumName: "1989", imageAlbumName: "1989"),
        Music(musicName: "out of the woods", albumName: "1989", imageAlbumName: "1989"),
        Music(musicName: "wonderland", albumName: "1989", imageAlbumName: "1989"),
        Music(musicName: "bad blood", albumName: "1989", imageAlbumName: "1989"),
        Music(musicName: "i know places", albumName: "1989", imageAlbumName: "1989"),
        Music(musicName: "dorothea", albumName: "evermore", imageAlbumName: "evermore"),
        Music(musicName: "ivy", albumName: "evermore", imageAlbumName: "evermore"),
        Music(musicName: "gold rush", albumName: "evermore", imageAlbumName: "evermore"),
        Music(musicName: "cowboy like me", albumName: "evermore", imageAlbumName: "evermore"),
        Music(musicName: "champagne problems", albumName: "evermore", imageAlbumName: "evermore"),
        Music(musicName: "marjorie", albumName: "evermore", imageAlbumName: "evermore")
    ]
}
