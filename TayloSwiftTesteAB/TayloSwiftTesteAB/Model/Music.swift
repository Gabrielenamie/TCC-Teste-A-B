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
        Music(musicName: "Dancing with our hands tied", albumName: "Reputation", imageAlbumName: "reputation"),
        Music(musicName: "Call it what you want", albumName: "Reputation", imageAlbumName: "reputation"),
        Music(musicName: "King of my heart", albumName: "Reputation", imageAlbumName: "reputation"),
        Music(musicName: "...Ready for it?", albumName: "Reputation", imageAlbumName: "reputation"),
        Music(musicName: "So it goes...", albumName: "Reputation", imageAlbumName: "reputation"),
        Music(musicName: "Dress", albumName: "Reputation", imageAlbumName: "reputation"),
        Music(musicName: "Sweet nothings", albumName: "Midnights", imageAlbumName: "midnights"),
        Music(musicName: "Paris", albumName: "Midnights", imageAlbumName: "midnights"),
        Music(musicName: "You're on your own, kid", albumName: "Midnights", imageAlbumName: "midnights"),
        Music(musicName: "Hits different", albumName: "Midnights", imageAlbumName: "midnights"),
        Music(musicName: "Vigilante shit", albumName: "Midnights", imageAlbumName: "midnights"),
        Music(musicName: "Bejeweled", albumName: "Midnights", imageAlbumName: "midnights"),
        Music(musicName: "Treacherous", albumName: "Red", imageAlbumName: "red"),
        Music(musicName: "The very first night", albumName: "Red", imageAlbumName: "red"),
        Music(musicName: "All too well", albumName: "Red", imageAlbumName: "red"),
        Music(musicName: "Holy ground", albumName: "Red", imageAlbumName: "red"),
        Music(musicName: "The lucky one", albumName: "Red", imageAlbumName: "red"),
        Music(musicName: "Nothing new", albumName: "Red", imageAlbumName: "speaknow"),
        Music(musicName: "Speak now", albumName: "Speak Now", imageAlbumName: "speaknow"),
        Music(musicName: "Long live", albumName: "Speak Now", imageAlbumName: "speaknow"),
        Music(musicName: "Mine", albumName: "Speak Now", imageAlbumName: "speaknow"),
        Music(musicName: "Enchanted", albumName: "Speak Now", imageAlbumName: "speaknow"),
        Music(musicName: "The story of us", albumName: "Speak Now", imageAlbumName: "speaknow"),
        Music(musicName: "Style", albumName: "1989", imageAlbumName: "1989"),
        Music(musicName: "Out of the woods", albumName: "1989", imageAlbumName: "1989"),
        Music(musicName: "Wonderland", albumName: "1989", imageAlbumName: "1989"),
        Music(musicName: "Bad blood", albumName: "1989", imageAlbumName: "1989"),
        Music(musicName: "I know places", albumName: "1989", imageAlbumName: "1989"),
        Music(musicName: "Dorothea", albumName: "Evermore", imageAlbumName: "evermore"),
        Music(musicName: "Ivy", albumName: "Evermore", imageAlbumName: "evermore"),
        Music(musicName: "Gold rush", albumName: "Evermore", imageAlbumName: "evermore"),
        Music(musicName: "Cowboy like me", albumName: "Evermore", imageAlbumName: "evermore"),
        Music(musicName: "Champagne problems", albumName: "Evermore", imageAlbumName: "evermore"),
        Music(musicName: "Marjorie", albumName: "Evermore", imageAlbumName: "evermore")
    ]
}
