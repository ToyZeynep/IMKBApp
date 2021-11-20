//
//  StockDetailsView.swift
//  IMKBApp
//
//  Created by MacOS on 19.11.2021.
//

import Foundation
import UIKit
import Material
import Charts

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
        label.text = "Sembol: "
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    } ()
    
    lazy var stockDetailsPriceLabel : UILabel = {
        let label = UILabel()
        label.textColor = UIColor.black
        label.textAlignment = .left
        label.font = UIFont.boldSystemFont(ofSize: 14)
        label.text = "Fiyat: "
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    } ()
    
    lazy var stockDetailsDifferenceLabel : UILabel = {
        let label = UILabel()
        label.backgroundColor = .clear
        label.textColor = UIColor.black
        label.textAlignment = .left
        label.font = UIFont.boldSystemFont(ofSize: 14)
        label.text = "% Fark: "
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    } ()
 
    lazy var stockDetailsVolumeLabel : UILabel = {
        let label = UILabel()
        label.backgroundColor = .clear
        label.textColor = UIColor.black
        label.textAlignment = .left
        label.font = UIFont.boldSystemFont(ofSize: 14)
        label.text = "Hacim: "
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    } ()
    
    lazy var stockDetailsBidLabel : UILabel = {
        let label = UILabel()
        label.textColor = UIColor.black
        label.textAlignment = .left
        label.font = UIFont.boldSystemFont(ofSize: 14)
        label.text = "Alış"
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
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    } ()
    
    lazy var stockDetailsMinimumLabel: UILabel = {
        let label = UILabel()
        label.textAlignment = .center
        label.text = "Günlük Düşük "
        label.textColor = .black
        label.font = UIFont.boldSystemFont(ofSize: 14)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    lazy var stockDetailsMaximumLabel: UILabel = {
        let label = UILabel()
        label.textAlignment = .left
        label.text = "Günlük Yüksek"
        label.textColor = .black
        label.font = UIFont.boldSystemFont(ofSize: 14)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    lazy var stockDetailsCountLabel: UILabel = {
        let label = UILabel()
        label.textAlignment = .left
        label.text = "Adet"
        label.textColor = .black
        label.font = UIFont.boldSystemFont(ofSize: 14)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    lazy var stockDetailsLowestLabel: UILabel = {
        let label = UILabel()
        label.textAlignment = .left
        label.text = "Taban"
        label.textColor = .black
        label.font = UIFont.boldSystemFont(ofSize: 14)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    lazy var stockDetailsHighestLabel: UILabel = {
        let label = UILabel()
        label.textAlignment = .left
        label.text = "Tavan"
        label.textColor = .black
        label.font = UIFont.boldSystemFont(ofSize: 14)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    lazy var stockDetailsVariationLabel: UILabel = {
        let label = UILabel()
        label.textAlignment = .left
        label.text = "Değişim:"
        label.textColor = .black
        label.font = UIFont.boldSystemFont(ofSize: 14)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    lazy var stockDetailsVariationImageView: UIImageView = {
       let imageView = UIImageView()
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.image = UIImage(named: "up")?.withRenderingMode(.alwaysTemplate)
        imageView.tintColor = .green
        imageView.contentMode = .scaleAspectFit
        imageView.layer.masksToBounds = true
        return imageView
    }()
    
    lazy var stockDetailsGraphicToolBarView: UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    lazy var stockDetailsChartView: LineChartView = {
        let view = LineChartView()
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setStockDetailsContentView()
        setGraphicToolbarView()
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    
}

