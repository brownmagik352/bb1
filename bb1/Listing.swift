//
//  Listing.swift
//  bb1
//
//  Created by Apurv Suman on 11/13/16.
//  Copyright © 2016 Apurv Suman. All rights reserved.
//

import UIKit


class Listing {
    
    /* Starter implementation */
    var title: String
    var price: Float
    var course: String
    var purchase_or_rent: String
    var condition: String
    var photo: UIImage
    
    init(title: String, price: Float, course: String, purchase_or_rent: String, condition: String, photo: UIImage) {
        self.title = title
        self.price = price
        self.course = course
        self.purchase_or_rent = purchase_or_rent
        self.condition = condition
        self.photo = photo
    }
    
    /* //ACTUAL IMPLEMENTATION
    // MARK: Properties
    
    var isbn: Int
    var title: String
    var author: String
    var year: Int?
    var edition: String?
    var photo: UIImage?
    var condition: String
    var price: Int
    var buy_or_rent: String
    var notes: String?
    var buyer: String?
    var course: String
    
    // MARK: Initialization
    init(isbn: Int, title: String, author: String, year: Int?, edition: String?, photo: UIImage?, condition: String, price: Int, buy_or_rent: String, notes: String?, buyer: String?, course: String) {
        self.isbn = isbn
        self.title = title
        self.author = author
        self.year = year
        self.edition = edition
        self.photo = photo
        self.condition = condition
        self.price = price
        self.buy_or_rent = buy_or_rent
        self.notes = notes
        self.buyer = buyer
        self.course = course
    }
 */
    
}
