//
//  CustomMyLabel.swift
//  IMKBApp
//
//  Created by MacOS on 6.12.2021.
//

import Foundation
import UIKit
class CustomMylabel : UILabel {

    init(title: String , labelTextAlignment: NSTextAlignment){
        super.init(frame: CGRect.zero)
        text = title
        textAlignment = labelTextAlignment
        textColor = .black
        font = UIFont.boldSystemFont(ofSize: 14)
        translatesAutoresizingMaskIntoConstraints = false
    }

    override init(frame: CGRect) {
        fatalError("Not Implemented")
    }


    required init?(coder aDecoder: NSCoder) {
        fatalError("Not Implemented")
    }
}
    
    
