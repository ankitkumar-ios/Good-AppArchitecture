//
//  AnalyticsEventEnum.swift
//  Good_AppArchitecture-1
//
//  Created by Ankit on 29/05/21.
//

import Foundation

enum AnalyticsEventEnums {
	case loginScreenView
	case loginFailed
	case loginSucceed
	case messageListViewed
	case messageSelected
	case messageDeleted(index: Int)
}


extension AnalyticsEventEnums {
	var name: String {
		switch self {
			case .loginScreenView, .loginSucceed, .messageListViewed:
				return String(describing: self)
			case .loginFailed:
				return "loginFailed"
			case .messageSelected:
				return "messageSelected"
			case .messageDeleted:
				return "messageDeleted"
		}
	}
	
	var metadata:[String:String] {
		switch self {
			case .loginScreenView, .loginSucceed, .messageListViewed:
				return [:]
			case .loginFailed:
				return ["reason":"failed"]
			case .messageSelected:
				return ["reason":"message selected"]
			case .messageDeleted:
				return ["reason":"message deleted"]
		}
	}
}
