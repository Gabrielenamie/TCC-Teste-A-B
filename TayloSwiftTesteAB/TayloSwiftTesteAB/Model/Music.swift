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
        Music(musicName: "Dancing With Our Hands Tied", albumName: "reputation", imageAlbumName: "reputation"),
        Music(musicName: "Call It What You Want", albumName: "reputation", imageAlbumName: "reputation"),
        Music(musicName: "King Of My Heart", albumName: "reputation", imageAlbumName: "reputation"),
        Music(musicName: "...Ready For It?", albumName: "reputation", imageAlbumName: "reputation"),
        Music(musicName: "New Year's Day", albumName: "reputation", imageAlbumName: "reputation"),
        Music(musicName: "Dress", albumName: "Reputation", imageAlbumName: "reputation"),
        Music(musicName: "Sweet Nothing", albumName: "Midnights", imageAlbumName: "midnights"),
        Music(musicName: "Paris", albumName: "Midnights", imageAlbumName: "midnights"),
        Music(musicName: "You're On Your Own, Kid", albumName: "Midnights", imageAlbumName: "midnights"),
        Music(musicName: "Hits Different", albumName: "Midnights", imageAlbumName: "midnights"),
        Music(musicName: "Vigilante Shit", albumName: "Midnights", imageAlbumName: "midnights"),
        Music(musicName: "Bejeweled", albumName: "Midnights", imageAlbumName: "midnights"),
        Music(musicName: "Treacherous", albumName: "Red", imageAlbumName: "red"),
        Music(musicName: "The Very First Night", albumName: "Red", imageAlbumName: "red"),
        Music(musicName: "All Too Well", albumName: "Red", imageAlbumName: "red"),
        Music(musicName: "Holy Ground", albumName: "Red", imageAlbumName: "red"),
        Music(musicName: "The Lucky One", albumName: "Red", imageAlbumName: "red"),
        Music(musicName: "Nothing New", albumName: "Red", imageAlbumName: "red"),
        Music(musicName: "Speak Now", albumName: "Speak Now", imageAlbumName: "speaknow"),
        Music(musicName: "Long Live", albumName: "Speak Now", imageAlbumName: "speaknow"),
        Music(musicName: "Mine", albumName: "Speak Now", imageAlbumName: "speaknow"),
        Music(musicName: "Enchanted", albumName: "Speak Now", imageAlbumName: "speaknow"),
        Music(musicName: "The Story Of Us", albumName: "Speak Now", imageAlbumName: "speaknow"),
        Music(musicName: "Sparks Fly", albumName: "Speak Now", imageAlbumName: "speaknow"),
        Music(musicName: "Style", albumName: "1989", imageAlbumName: "1989"),
        Music(musicName: "Out Of The Woods", albumName: "1989", imageAlbumName: "1989"),
        Music(musicName: "Wonderland", albumName: "1989", imageAlbumName: "1989"),
        Music(musicName: "Bad Blood", albumName: "1989", imageAlbumName: "1989"),
        Music(musicName: "I Know Places", albumName: "1989", imageAlbumName: "1989"),
        Music(musicName: "Clean", albumName: "1989", imageAlbumName: "1989"),
        Music(musicName: "dorothea", albumName: "evermore", imageAlbumName: "evermore"),
        Music(musicName: "ivy", albumName: "evermore", imageAlbumName: "evermore"),
        Music(musicName: "gold rush", albumName: "evermore", imageAlbumName: "evermore"),
        Music(musicName: "cowboy like me", albumName: "evermore", imageAlbumName: "evermore"),
        Music(musicName: "champagne problems", albumName: "evermore", imageAlbumName: "evermore"),
        Music(musicName: "marjorie", albumName: "evermore", imageAlbumName: "evermore")
    ]
}
