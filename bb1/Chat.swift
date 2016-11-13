//
//  File.swift
//  bb1
//
//  Created by Apurv Suman on 11/13/16.
//  Copyright © 2016 Apurv Suman. All rights reserved.
//

import UIKit

class Chat {
    // MARK: Properties
    var title: String
    var price: Float
    var course: String
    var purchase_or_rent: String
    var condition: String
    var buy_or_sell: String
    var photo: UIImage
    
    
    // MARK: Initialization
    init(title: String, price: Float, course: String, purchase_or_rent: String, condition: String, buy_or_sell: String, photo: UIImage) {
        self.title = title
        self.price = price
        self.course = course
        self.purchase_or_rent = purchase_or_rent
        self.condition = condition
        self.photo = photo
        self.buy_or_sell = buy_or_sell
    }
}
