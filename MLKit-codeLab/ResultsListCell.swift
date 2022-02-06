//
//  ResultsListCell.swift
//  MLKit-codelab
//
//  Created by Pluto on 2/6/2022.
//  Copyright © 2022 Google Inc. All rights reserved.
//

import UIKit

class ResultsListCell: UITableViewCell {
   typealias DoneButtonAction = () -> Void

   @IBOutlet var titleLabel: UILabel!
   @IBOutlet var dateLabel: UILabel!
   @IBOutlet var doneButton: UIButton!

   var doneButtonAction: DoneButtonAction?
   
   @IBAction func doneButtonTriggered(_ sender: UIButton) {
       doneButtonAction?()
   }
}
