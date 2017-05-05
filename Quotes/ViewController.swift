//
//  ViewController.swift
//  Quotes
//
//  Created by Matteo Manferdini on 27/02/16.
//  Copyright © 2016 Pure Creek. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
	@IBOutlet weak var tableView: UITableView!
	
	let dataSource: QuotesDataSource
	
	required init?(coder aDecoder: NSCoder) {
		let quotes = [
			Quote(author: "Albert Einstein", text: "Two things are infinite: the universe and human stupidity; and I am not sure about the universe."),
			Quote(author: "Steve Jobs", text: "Design is not just what it looks like and feels like. Design is how it works."),
			Quote(author: "John Lennon", text: "Life is what happens when you’re busy making other plans.")
		]
		self.dataSource = QuotesDataSource(quotes: quotes)
		super.init(coder: aDecoder)
	}
}

// MARK: UIViewController
extension ViewController {
	
	override func viewDidLoad() {
		super.viewDidLoad()
		tableView.estimatedRowHeight = 113
		tableView.rowHeight = UITableViewAutomaticDimension
		tableView.dataSource = dataSource
		tableView.reloadData()
	}
}

