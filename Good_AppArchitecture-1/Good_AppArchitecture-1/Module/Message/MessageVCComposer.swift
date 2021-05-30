//
//  MessageVCComposer.swift
//  Good_AppArchitecture-1
//
//  Created by Ankit on 30/05/21.
//

import Foundation

class MessageVCComposer {
	var analytics: AnalyticsManager
	
	init(){
		analytics = AnalyticsManager.init(engine: CloudKitAnalyticsEngine())
	}
	
}
