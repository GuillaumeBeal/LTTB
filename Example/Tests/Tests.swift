import UIKit
import XCTest
import LTTB

class Tests: XCTestCase {
    
    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func testExample() {
        // This is an example of a functional test case.
        XCTAssert(true, "Pass")
    }
    
    func testPerformanceExample() {
        // This is an example of a performance test case.
		
		var dataSet: [(x: Double,y: Double)] = []
		
		for i in 0..<1000000{
			let x = Double(i)
			let y = Double(arc4random_uniform(1) * 1000)
			dataSet.append((x: x,y: y))
		}
		
		self.measureBlock {
			// Put the code you want to measure the time of here.
			let result = LTTB().downSample(dataSet, threshold: 1000)
			
			
		}
    }
	
}
