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
    // var for quote label
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
		// Call function to display quote
		displayQuote()
	}
	
	// func for display another quote
	@IBAction func userClicked() {
		displayQuote()
	}
	
	private func displayQuote() {
		// generate random number within size of quotes
		let randomIndex = Int(arc4random()) % quotes.count
		// retrieve the random quote
		let singleQuote = quotes.object(at: randomIndex) as! String
		// set label text to singleQuote
		lblQuote.text = singleQuote
	}

	override func didReceiveMemoryWarning() {
		super.didReceiveMemoryWarning()
		// Dispose of any resources that can be recreated.
	}


}

