//
//  Box.swift
//  Realm Pure
//
//  Created by Yasser Hajlaoui on 3/5/22.
//

import Foundation
import RealmSwift

class Box: Object {
    @objc dynamic var name: String = ""
    let items = List<Item>()
}
