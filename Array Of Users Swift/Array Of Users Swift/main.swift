//
//  main.swift
//  Array Of Users Swift
//
//  Created by Farras Doko on 06/02/21.
//

import Foundation

class Helper {
    var users: [User] = []
    
    func heightOfUser(_ name: String) -> Float {
        let user = users.filter{
            $0.name == name
        }
        return user[0].height
    }
    
    init() {
        let barbara = User(name: "Barbara", lastName: "Kentaki", height: 160.0, eyeColor: .blue, active: false)
        let bennett = User(name: "Bennett", lastName: "Hiken", height: 1.88, eyeColor: .red, active: true)
        let kurohige = User(name: "Black", lastName: "Beard", height: 18000.0, eyeColor: .black, active: true)
        let shirohige = User(name: "White", lastName: "Beard", height: 666.0, eyeColor: .white, active: false)
        users = [barbara, bennett, kurohige, shirohige]
    }
}

let helper = Helper()
let name = "Bennett"
print("Height of \(name) is \(helper.heightOfUser(name))")
