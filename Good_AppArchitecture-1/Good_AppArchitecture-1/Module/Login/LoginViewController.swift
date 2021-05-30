//
//  LoginViewController.swift
//  Good_AppArchitecture-1
//
//  Created by Ankit on 29/05/21.
//

import UIKit

class LoginViewController: UIViewController {
	
	private let analytics: AnalyticsManager
	
	init(analytics: AnalyticsManager){
		self.analytics = analytics
		super.init()
	}
	
	required init?(coder: NSCoder) {
		fatalError("init(coder:) has not been implemented")
	}
	
	override func viewDidLoad() {
		super.viewDidLoad()
	}
	
	override func viewWillAppear(_ animated: Bool) {
		super.viewWillAppear(animated)
		analytics.log(.loginSucceed)
	}
	
	func loginFailed() {
		analytics.log(.loginFailed)
	}

}
