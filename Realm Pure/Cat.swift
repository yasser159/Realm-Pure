//
//  Cat.swift
//  Pods
//
//  Created by Yasser Hajlaoui on 3/6/22.
//

import Foundation
import RealmSwift

class Cat: Object {
    
    @objc dynamic var name:   String?
    @objc dynamic var color:  String?
    @objc dynamic var gender: String?
    
}
