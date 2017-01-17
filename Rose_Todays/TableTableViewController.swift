//
//  TableTableViewController.swift
//  Rose_Todays
//
//  Created by Tyler Rose on 1/17/17.
//  Copyright © 2017 Tyler Rose. All rights reserved.
//

import UIKit

class TableTableViewController: UITableViewController {
	
	var quotes : Array<String>!

	override func viewDidLoad() {
		//quotes = [Bundle.main.path(forResource: "ListOfQuotes", ofType: "plist")!] as Array<String>
		let filepath = Bundle.main.path(forResource: "ListOfQuotes", ofType: "plist")!
		quotes = NSArray(contentsOfFile: filepath) as! Array<String>
	}
	
	@IBAction func dismissPopover(_ sender: UIBarButtonItem) {
		self.dismiss(animated: true, completion: nil)
	}
	
	override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
		return quotes.count
	}
	
	override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
		let cell = UITableViewCell()
		let quote: String = quotes [indexPath.row]
		cell.textLabel?.text = quote
		return cell
	}
	
}
