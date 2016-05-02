//
//  QuoteCell.swift
//  Quotes
//
//  Created by Matteo Manferdini on 27/02/16.
//  Copyright © 2016 Pure Creek. All rights reserved.
//

import UIKit

class QuoteCell: UITableViewCell {
    @IBOutlet weak var authorLabel: UILabel!
    @IBOutlet weak var quoteLabel: UILabel!
    
    var author: String? {
        didSet {
            authorLabel.text = author
        }
    }
    
    var quoteText: String? {
        didSet {
            quoteLabel.text = quoteText
        }
    }
}