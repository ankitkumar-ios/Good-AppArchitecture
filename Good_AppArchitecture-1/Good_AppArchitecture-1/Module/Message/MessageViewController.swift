//
//  MessageViewController.swift
//  Good_AppArchitecture-1
//
//  Created by Ankit on 29/05/21.
//

import UIKit

class MessageViewController: UIViewController {
	var analytics: AnalyticsManager?
	var composer: AnalyticsComposer?
		
	override func viewDidLoad() {
		super.viewDidLoad()
		analytics = composer?.analytics
	}
	
	override func viewWillAppear(_ animated: Bool) {
		super.viewWillAppear(animated)
		analytics?.log(.messageListViewed)
	}
	
	func messageDeleteAt(index: Int) {
		analytics?.log(.messageDeleted(index: index))
	}

}
