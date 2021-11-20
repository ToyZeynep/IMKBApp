//
//  ButtonHighlighted.swift
//  IMKBApp
//
//  Created by MacOS on 20.11.2021.
//

import Foundation
import UIKit
class HighlightedButton: UIButton {

    override var isHighlighted: Bool {
        didSet {
            backgroundColor = isHighlighted ? .lightGray: .lightGray
        }
    }
}
