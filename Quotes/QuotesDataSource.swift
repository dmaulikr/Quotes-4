//
//  QuotesDataSource.swift
//  Quotes
//
//  Created by Matteo Manferdini on 27/02/16.
//  Copyright © 2016 Pure Creek. All rights reserved.
//

import UIKit

class QuotesDataSource: NSObject {
    let quotes: [Quote]
    
    init(quotes: [Quote]) {
        self.quotes = quotes
    }
}

extension QuotesDataSource: UITableViewDataSource {
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return quotes.count
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier(String(QuoteCell)) as! QuoteCell
        let quote = quotes[indexPath.row]
        cell.author = quote.author
        cell.quoteText = quote.text
        return cell
    }
}