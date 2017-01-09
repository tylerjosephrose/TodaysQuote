//
//  ViewController.swift
//  Rose_Todays
//
//  Created by Tyler Rose on 1/9/17.
//  Copyright © 2017 Tyler Rose. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
	
	// declare our array of quotes
	//var quotes : Array<String>!
	var quotes : NSArray!

	@IBOutlet weak var lblQuote: UILabel!
	
	override func viewDidLoad() {
		super.viewDidLoad()
		// 1. Load contents of ListOfQuotes.plist to array
		// create reference to app main bundle
		let appBundle : Bundle = Bundle.main
		// Get reference to file path
		let filePath = appBundle.path(forResource: "ListOfQuotes", ofType: "plist")!
		// Load quotes from filePath to quotes
		quotes = NSArray(contentsOfFile: filePath)
		// Get single quote from list
		let singleQuote : String = quotes.object(at: 1) as! String
		// Set label text to this singleQuote
		lblQuote.text = singleQuote
	}

	override func didReceiveMemoryWarning() {
		super.didReceiveMemoryWarning()
		// Dispose of any resources that can be recreated.
	}


}

