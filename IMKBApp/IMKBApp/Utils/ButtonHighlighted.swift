//
//  ButtonHighlighted.swift
//  IMKBApp
//
//  Created by MacOS on 20.11.2021.
//

import Foundation
import UIKit
class HighlightedButton: UIButton {
    
    init(title : String){
        super.init(frame: CGRect.zero)
        setTitle(title, for: .normal)
        setTitleColor(.black, for: .normal)
        contentHorizontalAlignment = .left
        translatesAutoresizingMaskIntoConstraints = false
        clipsToBounds = true
        
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override var isHighlighted: Bool {
        didSet {
            backgroundColor = isHighlighted ? .lightGray: .lightGray
        }
    }
}
