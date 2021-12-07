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
        let label = CustomMylabel(title: "Sembol", labelTextAlignment: .left)
        return label
    } ()
    
    lazy var stockDetailsPriceLabel : UILabel = {
        let label = CustomMylabel(title: "Fiyat", labelTextAlignment: .left)
        return label
    } ()
    
    lazy var stockDetailsDifferenceLabel : UILabel = {
        let label = CustomMylabel(title: "Fark", labelTextAlignment: .left)
        return label
    } ()
 
    lazy var stockDetailsVolumeLabel : UILabel = {
        let label = CustomMylabel(title: "Hacim", labelTextAlignment: .left)
        return label
    } ()
    
    lazy var stockDetailsBidLabel : UILabel = {
        let label = CustomMylabel(title: "Alış", labelTextAlignment: .left)
        return label
    } ()

    lazy var stockDetailsOfferLabel : UILabel = {
        let label = CustomMylabel(title: "Satış", labelTextAlignment: .left)
        return label
    } ()
    
    lazy var stockDetailsMinimumLabel: UILabel = {
        let label = CustomMylabel(title: "Günlük düşük", labelTextAlignment: .right)
        return label
    }()
    
    lazy var stockDetailsMaximumLabel: UILabel = {
        let label = CustomMylabel(title: "Günlük Yüksek", labelTextAlignment: .right)
        return label
    }()
    
    lazy var stockDetailsCountLabel: UILabel = {
        let label = CustomMylabel(title: "Adet", labelTextAlignment: .right)
        return label
    }()
    
    lazy var stockDetailsLowestLabel: UILabel = {
        let label = CustomMylabel(title: "Taban", labelTextAlignment: .right)
        return label
    }()
    
    lazy var stockDetailsHighestLabel: CustomMylabel = {
        let label = CustomMylabel(title: "Tavan", labelTextAlignment: .right)
        return label
    }()
    
    lazy var stockDetailsVariationLabel: CustomMylabel = {
        let label = CustomMylabel(title: "Değişim", labelTextAlignment: .left )
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

