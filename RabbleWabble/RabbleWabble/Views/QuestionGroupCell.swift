//
//  QuestionGroupCell.swift
//  RabbleWabble
//
//  Created by Stefan Boblic on 08.09.2022.
//

import UIKit
import Combine

public class QuestionGroupCell: UITableViewCell {
    @IBOutlet public var titleLabel: UILabel!
    @IBOutlet public var percentageLabel: UILabel!
    public var percentageSubscriber: AnyCancellable?
}

