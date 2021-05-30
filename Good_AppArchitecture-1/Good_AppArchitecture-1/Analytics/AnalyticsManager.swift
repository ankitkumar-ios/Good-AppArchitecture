//
//  AnalyticsManager.swift
//  Good_AppArchitecture-1
//
//  Created by Ankit on 29/05/21.
//

import Foundation

protocol AnalyticsEngine {
	func sendAnalyticsEvent(named name:String, metadata: [String: String])
}

class AnalyticsManager {
	private let engine: AnalyticsEngine
	
	init(engine: AnalyticsEngine) {
		self.engine = engine
	}
	
	func log(_ event: AnalyticsEventEnums) {
		engine.sendAnalyticsEvent(named: event.name, metadata: event.metadata)
	}
	
}
