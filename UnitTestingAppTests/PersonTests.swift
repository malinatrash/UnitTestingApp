//
//  PersonTests.swift
//  UnitTestingAppTests
//
//  Created by Pavel Naumov on 09.01.2023.
//

import XCTest
@testable import UnitTestingApp

final class PersonTests: XCTestCase {
    
    var person: Person?
    var image: UIImage?
    var imageData: Data?

    override func setUp() {
        super.setUp()
        person = Person(name: "Foo", phone:"Bar")
        image = UIImage(systemName: "person.crop.circle")
        imageData = image?.pngData()
    }

    override func tearDown() {
        person = nil
        image = nil
        imageData = nil
        super.tearDown()
    }

    func testInitPersonWithNameAndPhone() {
        XCTAssertNotNil(person)
    }
    
    func testInitPersonWithFullNameAndPhone() {
        let person = Person(name: "Foo", surname: "Bar", phone: "Baz")
        XCTAssertNotNil(person)
    }
    
    func testWhenGivenNameAndPhoneSetsNameAndPhone() {
        XCTAssertEqual(person?.name, "Foo")
        XCTAssertEqual(person?.phone, "Bar")
    }
    
    func testWhenGivenFullNameAndPhoneSetsFullNameAndPhone() {
        let person = Person(name: "Foo", surname: "Bar", phone: "Baz")
        XCTAssertEqual(person.surname, "Bar")
    }
    
    func testInitPersonWithDate() {
        XCTAssertNotNil(person?.date)
    }
    
    func testInitPersonWithImage() {
        let person = Person(name: "Foo", phone: "Bar", image: imageData)
        XCTAssertNotNil(person.image)
    }
    
    func testInitPersonWithFullNameAndImage() {
        let person = Person(name: "Foo", surname:"Bar", phone: "Baz", image: imageData)
        XCTAssertNotNil(person.image)
    }
}
