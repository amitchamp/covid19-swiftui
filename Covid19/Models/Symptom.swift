//
//  Symptom.swift
//  Covid19
//
//  Created by Sumit on 14/05/20.
//  Copyright © 2020 Tutorials. All rights reserved.
//

import Foundation

struct Symptom: Hashable {
    var imageName: String
    var name: String
}

struct Prevention: Hashable {
    var imageName: String
    var name: String
    var description: String
}
