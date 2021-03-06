//
//  AstronomyUITests.swift
//  AstronomyUITests
//
//  Created by Linh Bouniol on 9/13/18.
//  Copyright © 2018 Lambda School. All rights reserved.
//

import XCTest

class AstronomyUITests: XCTestCase {
        
    override func setUp() {
        super.setUp()
        
        let app = XCUIApplication()
        
        app.launchArguments = ["UITesting"]
    
        /*
         This project is set up so we can test the UI without having to worry about the uncertainty that network calls bring into the application.
         The string of the launch argument is what the application will look for to know that it use local data instead of making network calls
         */
        
        // In UI tests it is usually best to stop immediately when a failure occurs.
        continueAfterFailure = false
        // UI tests must launch the application that they test. Doing this in setup will make sure it happens for each test method.
        app.launch()

        // In UI tests it’s important to set the initial state - such as interface orientation - required for your tests before they run. The setUp method is a good place to do this.
        
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func testExample() {
        // Use recording to get started writing UI tests.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
        
        
//        let app = XCUIApplication()
//        app.navigationBars["Sol 1"]/*@START_MENU_TOKEN@*/.buttons["PhotosCollectionViewController.NextSolButton"]/*[[".buttons[\">\"]",".buttons[\"PhotosCollectionViewController.NextSolButton\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/.tap()
//        app.collectionViews.children(matching: .cell).element(boundBy: 0).images["ImageCollectionViewCell.ImageView"].tap()
//        app/*@START_MENU_TOKEN@*/.buttons["PhotoDetailViewController.SaveButton"]/*[[".buttons[\"Save to Photo Library\"]",".buttons[\"PhotoDetailViewController.SaveButton\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/.tap()
//
//
//        let app = XCUIApplication()
//        app.alerts["Photo Saved!"].buttons["Okay"].tap()
    
    }
    
    func testSavePhoto() {
        
        PhotosCollectionViewPage(testCase: self).tapOnCollectionCell(at: 0).tapOnSaveButton().verifyAlertShowsUp()
    }
    
    func testNavigateToNextSol() {
        
        PhotosCollectionViewPage(testCase: self)
            .tapOnNextSolButton()
            .verifyTitle(title: "Sol 16")
    }
    
    func testNavigateToPreviousSol() {
        
        PhotosCollectionViewPage(testCase: self)
            .tapOnPreviousSolButton()
            .verifyTitle(title: "Sol 14")
    }
    
    func testImage() {
        
        PhotosCollectionViewPage(testCase: self)
            .tapOnNextSolButton()
            .tapOnCollectionCell(at: 0) // now in detail
            .verifyImage()
    }
    
}
