//
//  appClock.swift
//  TayloSwiftTesteAB
//
//  Created by Vitor Cheung on 20/09/23.
//

import Foundation

class AppClock {
    static var shared = AppClock()
    var time: Float = 0.0
    var timer: Timer?
    func startTime(){
        timer = Timer.scheduledTimer(timeInterval: 0.1, target: self, selector: #selector(fireTimer), userInfo: nil, repeats: true)

    }
    @objc private func fireTimer() {
        time += 0.1
    }
    func getTime() -> Float{
        timer?.invalidate()
        timer = nil
        let response = time
        time = 0
        return response
    }
}
