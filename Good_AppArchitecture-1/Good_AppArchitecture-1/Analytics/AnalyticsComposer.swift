//
//  AnalyticsComposer.swift
//  Good_AppArchitecture-1
//
//  Created by Ankit on 31/05/21.
//

import Foundation

class AnalyticsComposer {
	var analytics: AnalyticsManager
	
	init(){
		analytics = AnalyticsManager.init(engine: CloudKitAnalyticsEngine())
	}
	
}
