//
//  CreateQuestionGroupTitleCell.swift
//  RabbleWabble
//
//  Created by Stefan Boblic on 14.09.2022.
//

import UIKit

public protocol CreateQuestionGroupTitleCellDelegate {
    func createQuestionGroupTitleCell(_ cell: CreateQuestionGroupTitleCell,
                                      titleTextDidChange text: String)
}

public class CreateQuestionGroupTitleCell: UITableViewCell {
    
    public var delegate: CreateQuestionGroupTitleCellDelegate?
    
    @IBOutlet public var titleTextField: UITextField!
}

extension CreateQuestionGroupTitleCell {
    
    @IBAction public func titleTextFieldDidChange(_ textField: UITextField) {
        delegate?.createQuestionGroupTitleCell(self, titleTextDidChange: textField.text!)
    }
}

extension CreateQuestionGroupTitleCell: UITextFieldDelegate {
    
    public func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return false
    }
}
