//
//  UnitTestingAppTests.swift
//  UnitTestingAppTests
//
//  Created by Pavel Naumov on 09.01.2023.
//

import XCTest
@testable import UnitTestingApp

final class DataModelTests: XCTestCase {
    
    var sut: DataModel! // SystemUnderTests

    // Метод для инициализации объекта класса, который будем тестить
    override func setUp() {
        super.setUp()
        sut = DataModel()
    }

    // Метод для ДЕинициализации объекта класса, который будем тестить
    override func tearDown() {
        sut = nil
        super.tearDown()
    }

    func testLowestVolumeShouldBeZero() {
        
        // given
        sut.setVolume(to: -1) // volume must be zero
        
        // when
        let volume = sut.volume
        
        // then
        XCTAssert(volume == 0, "Lowest value should be equal zero")
    }
    
    func testHeighstVolumeShouldBe100() {
        
        // given
        sut.setVolume(to: 101) // volume must be zero
        
        // when
        let volume = sut.volume
        
        // then
        XCTAssert(volume == 100, "Lowest value should be equal zero")
    }

    func testPerformanceExample() throws {
        measure {
            sut.setVolume(to: 55)
        }
    }
}
