//
//  Category.swift
//  Todoey
//
//  Created by Irina Munteanu on 07/01/2019.
//  Copyright © 2019 Irina Munteanu. All rights reserved.
//

import Foundation
import RealmSwift

class Category: Object{
    @objc dynamic var name: String = ""
    let items = List<Item>()
}
