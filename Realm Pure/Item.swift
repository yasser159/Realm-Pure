//
//  Item.swift
//  Realm Pure
//
//  Created by Yasser Hajlaoui on 3/5/22.
//

import Foundation
import RealmSwift

class Item: Object {
    @objc dynamic var title : String  = ""
    @objc dynamic var done: Bool = false
    @objc dynamic var dateCreated : Date?
    var parentCategory = LinkingObjects(fromType: Box.self, property: "items")
}
