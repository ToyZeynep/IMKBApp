//
//  StockDetailsViewController.swift
//  IMKBApp
//
//  Created by MacOS on 19.11.2021.
//

import Foundation
import UIKit
import RxCocoa
import RxSwift
import RxGesture
import XCoordinator
import Kingfisher
import Action
import Charts

class StockDetailsViewController: UIViewController, BindableType {
    
    let disposeBag = DisposeBag()
    var stockDetailsView = StockDetailsView()
    var viewModel: StockDetailsViewModel!
    var isDown : Bool?
    
    override func loadView() {
        view = stockDetailsView
    }
    override func viewWillAppear(_ animated: Bool) {
        navigationController?.navigationBar.tintColor = .black
    }
    
    
    override func viewDidLoad() {
    }

func bindViewModel() {
    
    
    viewModel.output.isDown.subscribe(onNext: { isDown in
        self.isDown = isDown
        let image1 =  UIImage(named: "up")?.withRenderingMode(.alwaysTemplate)
        let image2 =  UIImage(named: "down")?.withRenderingMode(.alwaysTemplate)
        var image = UIImage()
        if isDown == true {
            image = image2!
            self.stockDetailsView.stockDetailsVariationImageView.tintColor = .red
        } else{
            image = image1!
            self.stockDetailsView.stockDetailsVariationImageView.tintColor = .green
        }
        self.stockDetailsView.stockDetailsVariationImageView.image = image
    }).disposed(by:disposeBag)

    viewModel.output.symbol.bind(to: stockDetailsView.stockDetailsSymbolLabel.rx.text).disposed(by: disposeBag)
    viewModel.output.price.bind(to: stockDetailsView.stockDetailsPriceLabel.rx.text).disposed(by: disposeBag)
    viewModel.output.difference.bind(to: stockDetailsView.stockDetailsDifferenceLabel.rx.text).disposed(by: disposeBag)
    viewModel.output.volume.bind(to: stockDetailsView.stockDetailsVolumeLabel.rx.text).disposed(by: disposeBag)
    viewModel.output.bid.bind(to: stockDetailsView.stockDetailsBidLabel.rx.text).disposed(by: disposeBag)
    viewModel.output.offer.bind(to: stockDetailsView.stockDetailsOfferLabel.rx.text).disposed(by: disposeBag)
    viewModel.output.highest.bind(to: stockDetailsView.stockDetailsHighestLabel.rx.text).disposed(by: disposeBag)
    viewModel.output.lowest.bind(to: stockDetailsView.stockDetailsLowestLabel.rx.text).disposed(by: disposeBag)
    viewModel.output.maximum.bind(to: stockDetailsView.stockDetailsMaximumLabel.rx.text).disposed(by: disposeBag)
    viewModel.output.minimum.bind(to: stockDetailsView.stockDetailsMinimumLabel.rx.text).disposed(by: disposeBag)
    viewModel.output.count.bind(to: stockDetailsView.stockDetailsCountLabel.rx.text).disposed(by: disposeBag)
    
    viewModel.output.graphicData.subscribe(onNext: { graphicData in
        self.createChart(graphicData: graphicData, upperLimit: self.getUpperLimit(graphicData: graphicData))
        
    }).disposed(by: disposeBag)
    
   }
    
    func createChart(graphicData: [GraphicData], upperLimit: Double) {
        let data = LineChartData()
        var lineChartEntry1 = [ChartDataEntry]()
        var lineChartEntry2 = [ChartDataEntry]()
        
        for i in graphicData {
            lineChartEntry1.append(ChartDataEntry(x: Double(i.day!), y: i.value!))
        }
        
        for i in graphicData {
            lineChartEntry2.append(ChartDataEntry(x: Double(i.day!), y: upperLimit))
        }
        
        let line1 = LineChartDataSet(entries: lineChartEntry1, label: "Stock Graphic")
        line1.fillColor = .red
        line1.circleRadius = 5
        line1.lineWidth = 3
        line1.setColor(.black)
        line1.lineDashLengths = [5]
        line1.setCircleColors(.black)
        line1.circleHoleColor = .black
        line1.drawFilledEnabled = true
        line1.drawCirclesEnabled = true
        
        let line2 = LineChartDataSet(entries: lineChartEntry2, label: "Upper Limit")
        line2.valueTextColor = .clear
        line2.lineWidth = 3
        line2.lineDashLengths = [5]
        line2.setColor(.red)
        line2.drawFilledEnabled = false
        line2.drawCirclesEnabled = false
        data.addDataSet(line1)
        data.addDataSet(line2)
        self.stockDetailsView.stockDetailsChartView.data = data
    }

    func getUpperLimit(graphicData: [GraphicData]) -> Double{
        var upperLimit = 0.0
        for i in graphicData {
            if upperLimit < i.value! {
                upperLimit = i.value!
            }
        }
        return upperLimit
    }
}
