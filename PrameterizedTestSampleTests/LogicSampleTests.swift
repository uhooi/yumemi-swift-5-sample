//
//  LogicSampleTests.swift
//  PrameterizedTestSampleTests
//
//  Created by uhooi on 2019/11/23.
//  Copyright © 2019 THE Uhooi. All rights reserved.
//

@testable import PrameterizedTestSample
import XCTest

class LogicSampleTests: XCTestCase {

    override func setUp() {
    }

    override func tearDown() {
    }

    // MARK: Test Methods
    
    // `canWork(motivation:hasRedBull:)` の全パターンをテストする
    //
    // | motivation | hasRedBull || return value |
    // | ---------: | :--------- || :----------- |
    // |         99 | true       || false        |
    // |         99 | false      || false        |
    // |        100 | true       || true         |
    // |        100 | false      || false        |
    
    // 特に工夫していないテストメソッド
    
    func test_canWork_motivation_99_hasRedBull_true() {
        let logic = LogicSample()
        XCTAssertFalse(logic.canWork(motivation: 99, hasRedBull: true))
    }
    
    func test_canWork_motivation_99_hasRedBull_false() {
        let logic = LogicSample()
        XCTAssertFalse(logic.canWork(motivation: 99, hasRedBull: false))
    }
    
    func test_canWork_motivation_100_hasRedBull_true() {
        let logic = LogicSample()
        XCTAssertTrue(logic.canWork(motivation: 100, hasRedBull: true))
    }
    
    func test_canWork_motivation_100_hasRedBull_false() {
        let logic = LogicSample()
        XCTAssertFalse(logic.canWork(motivation: 100, hasRedBull: false))
    }
    
    // パラメタライズドテスト
    
    func test_canWork() {
        let tests: [(line: UInt, motivation: Int, hasRedBull: Bool, expect: Bool)] = [
            (#line,  99, true,  false),
            (#line,  99, false, false),
            (#line, 100, true,  true),
            (#line, 100, false, false)
        ]
        
        for (line, motivation, hasRedBull, expect) in tests {
            let logic = LogicSample()
            let result = logic.canWork(motivation: motivation, hasRedBull: hasRedBull)
            XCTAssertEqual(result, expect, line: line)
        }
    }

}
