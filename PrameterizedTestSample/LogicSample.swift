//
//  LogicSample.swift
//  PrameterizedTestSample
//
//  Created by uhooi on 2019/11/23.
//  Copyright © 2019 THE Uhooi. All rights reserved.
//

import Foundation

class LogicSample {
    
    // MARK: Internal Methods
    
    func canWork(motivation: Int, hasRedBull: Bool) -> Bool {
        if motivation < 100 {
            return false
        }
        
        if !hasRedBull {
            return false
        }
        
        return true
    }
}
