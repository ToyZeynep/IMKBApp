//
//  StockDetailsView.swift
//  IMKBApp
//
//  Created by MacOS on 19.11.2021.
//

import Foundation
import UIKit
import Material

class StockDetailsView: UIView {
    
    lazy var stockDetailsContentView: UIView = {
        let view = UIView()
        view.backgroundColor = .clear
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()

    lazy var stockDetailsSymbolLabel : UILabel = {
        let label = UILabel()
        label.backgroundColor = .clear
        label.textColor = UIColor.black
        label.textAlignment = .left
        label.font = UIFont.boldSystemFont(ofSize: 14)
        label.text = "Sembol"
        label.numberOfLines = 1
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    } ()
    
    lazy var stockDetailsPriceLabel : UILabel = {
        let label = UILabel()
        label.backgroundColor = .clear
        label.textColor = UIColor.black
        label.textAlignment = .left
        label.font = UIFont.boldSystemFont(ofSize: 14)
        label.text = "Fiyat"
        label.numberOfLines = 1
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    } ()
 
    
    lazy var stockDetailsDifferenceLabel : UILabel = {
        let label = UILabel()
        label.backgroundColor = .clear
        label.textColor = UIColor.black
        label.textAlignment = .left
        label.font = UIFont.boldSystemFont(ofSize: 14)
        label.text = "% Fark"
        label.numberOfLines = 1
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    } ()
 
    lazy var stockDetailsVolumeLabel : UILabel = {
        let label = UILabel()
        label.backgroundColor = .clear
        label.textColor = UIColor.black
        label.textAlignment = .left
        label.font = UIFont.boldSystemFont(ofSize: 14)
        label.text = "Hacim"
        label.numberOfLines = 1
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    } ()
    
    lazy var stockDetailsBidLabel : UILabel = {
        let label = UILabel()
        label.backgroundColor = .clear
        label.textColor = UIColor.black
        label.textAlignment = .left
        label.font = UIFont.boldSystemFont(ofSize: 14)
        label.text = "Alış"
        label.numberOfLines = 1
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    } ()
 

    lazy var stockDetailsOfferLabel : UILabel = {
        let label = UILabel()
        label.backgroundColor = .clear
        label.textColor = UIColor.black
        label.textAlignment = .left
        label.font = UIFont.boldSystemFont(ofSize: 14)
        label.text = "Satış"
        label.numberOfLines = 1
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    } ()
    
    lazy var stockDetailsMinimumLabel: UILabel = {
        let label = UILabel()
        label.textAlignment = .center
        label.text = "Günlük Düşük "
        label.textColor = .black
        label.font = UIFont.boldSystemFont(ofSize: 18)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    lazy var stockDetailsMaximumLabel: UILabel = {
        let label = UILabel()
        label.textAlignment = .center
        label.text = "Günlük Yüksek"
        label.textColor = .black
        label.font = UIFont.boldSystemFont(ofSize: 18)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    lazy var stockDetailsCountLabel: UILabel = {
        let label = UILabel()
        label.textAlignment = .center
        label.text = "Adet"
        label.textColor = .black
        label.font = UIFont.boldSystemFont(ofSize: 18)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    lazy var stockDetailsLowestLabel: UILabel = {
        let label = UILabel()
        label.textAlignment = .center
        label.text = "Taban"
        label.textColor = .black
        label.font = UIFont.boldSystemFont(ofSize: 18)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    lazy var stockDetailsHighestLabel: UILabel = {
        let label = UILabel()
        label.textAlignment = .center
        label.text = "Tavan"
        label.textColor = .black
        label.font = UIFont.boldSystemFont(ofSize: 18)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    lazy var stockDetailsVariationLabel: UILabel = {
        let label = UILabel()
        label.textAlignment = .center
        label.text = "Değişim"
        label.textColor = .black
        label.font = UIFont.boldSystemFont(ofSize: 18)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()

    lazy var stockDetailsGraphicToolBarView: UIView = {
        let view = UIView()
        view.backgroundColor = .red
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setStockDetailsContentView()
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    
}

