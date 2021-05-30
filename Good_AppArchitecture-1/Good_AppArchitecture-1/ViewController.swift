//
//  ViewController.swift
//  Good_AppArchitecture-1
//
//  Created by Ankit on 29/05/21.
//

import UIKit

class ViewController: UIViewController {

	override func viewDidLoad() {
		super.viewDidLoad()
		// Do any additional setup after loading the view.
		
		
	}
	override func viewDidAppear(_ animated: Bool) {
		super.viewDidAppear(animated)
		setupViewDidLoad()
	}
	
	func setupViewDidLoad(){
		setupMessageViewController()
	}
	
	func setupMessageViewController(){
		let messageComposer = MessageVCComposer()
		guard let messageVC = self.storyboard?.instantiateViewController(identifier: "MessageViewController") as? MessageViewController else {return}
		messageVC.composer = messageComposer
		self.present(messageVC, animated: true, completion: nil)
	}

}

