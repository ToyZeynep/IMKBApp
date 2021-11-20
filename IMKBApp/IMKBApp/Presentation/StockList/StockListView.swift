//
//  StockListView.swift
//  IMKBApp
//
//  Created by MacOS on 16.11.2021.
//

import Foundation
import UIKit
import Material

class StockListView: UIView {
    
    lazy var stockListContentView: UIView = {
        let view = UIView()
        view.backgroundColor = .clear
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    lazy var stockListToolBarView: UIView = {
        let view = UIView()
        view.backgroundColor = .red
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    lazy var stockListLeftMenuButton: UIButton = {
        let button = UIButton(type: .custom)
        button.setImage(UIImage(named: "leftMenu")?.withRenderingMode(.alwaysTemplate), for: .normal)
        button.tintColor = .white
        button.translatesAutoresizingMaskIntoConstraints = false
        button.clipsToBounds = true
        return button
    }()
    
    lazy var stockListTopLabel: UILabel = {
        let label = UILabel()
        label.textAlignment = .center
        label.text = "IMKB Hisse Ve Endeksler"
        label.textColor = .white
        label.font = UIFont.boldSystemFont(ofSize: 18)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
  
    lazy var stockListSearchTextField : UITextField = {
        let textField = UITextField()
        textField.backgroundColor = .white
        textField.placeholder = "Ara"
        textField.translatesAutoresizingMaskIntoConstraints = false
        textField.font = UIFont.systemFont(ofSize: 20)
        textField.borderStyle = UITextField.BorderStyle.roundedRect
        textField.layer.borderColor = UIColor.blue.cgColor
        textField.autocorrectionType = UITextAutocorrectionType.no
        textField.keyboardType = UIKeyboardType.default
        textField.returnKeyType = .search
        textField.layer.cornerRadius = 10
        textField.clearButtonMode = UITextField.ViewMode.whileEditing
        textField.contentVerticalAlignment = UIControl.ContentVerticalAlignment.center
        return textField
    }()
    
    lazy var stockListTableView: UITableView = {
        let tableView = UITableView()
        tableView.translatesAutoresizingMaskIntoConstraints = false
        tableView.backgroundColor = .clear
        tableView.keyboardDismissMode = .onDrag
        return tableView
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setStockListContentView()
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    
}
