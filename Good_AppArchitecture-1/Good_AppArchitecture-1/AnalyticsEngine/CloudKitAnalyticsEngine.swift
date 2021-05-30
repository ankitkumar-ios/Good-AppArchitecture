//
//  CloudKitAnalyticsEngine.swift
//  Good_AppArchitecture-1
//
//  Created by Ankit on 29/05/21.
//

import Foundation

class CloudKitAnalyticsEngine: AnalyticsEngine {
	func sendAnalyticsEvent(named name: String, metadata: [String : String]) {
		for (key, value) in metadata {
			print(key)
			print(value)
		}
		
		//save/send data
	}
	
	
}
