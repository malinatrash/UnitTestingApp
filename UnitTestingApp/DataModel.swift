//
//  DataModel.swift
//  UnitTestingApp
//
//  Created by Pavel Naumov on 09.01.2023.
//

import Foundation

class DataModel {
    
    private(set) var volume = 0
    
    func setVolume(to value: Int) {
        volume = min(max(value, 0), 100)
    }
    
    
}
