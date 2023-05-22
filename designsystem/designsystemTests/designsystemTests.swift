//
//  DesignSystemTests.swift
//  DesignSystemTests
//
//  Created by Fernanda Olimpio Jesus de Abreu on 08/02/23.
//

@testable import DesignSystem
import SwiftUI
import XCTest

public final class DesignSystemTests: XCTestCase {

    public func testGetResourceColors() {
        let color = UIColor.appColor(.amber10)
        XCTAssertNotNil(color)
    }

    public func testGetSwiftUIColor() {
        let color = Color.uiColor(.amber0)
        XCTAssertNotNil(color)
    }

}
