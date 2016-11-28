//
//  TempChat.swift
//  bb1
//
//  Created by Apurv Suman on 11/27/16.
//  Copyright © 2016 Apurv Suman. All rights reserved.
//

import UIKit

class TempChat {
    
    // MARK: Properties
    var message: String
    var photo: UIImage
    
    // MARK: Initialization
    init(photo: UIImage, message: String) {
        self.message = message
        self.photo = photo
    }
    
}
