//
//  LeftManuViewModel.swift
//  IMKBApp
//
//  Created by MacOS on 18.11.2021.
//
import Foundation
import RxSwift
import XCoordinator
import Action

protocol LeftMenuViewModelInput {
    

}

protocol LeftMenuViewModelOutput {
}

protocol LeftMenuViewModelStoredProperties {
   
    
}
protocol LeftMenuViewModel{
    var input: LeftMenuViewModelInput { get }
    var output: LeftMenuViewModelOutput { get }
    var storedProperties : LeftMenuViewModelStoredProperties { get }
    
}

extension LeftMenuViewModel where Self:  LeftMenuViewModelInput & LeftMenuViewModelOutput & LeftMenuViewModelStoredProperties {
    var input: LeftMenuViewModelInput { return self }
    var output: LeftMenuViewModelOutput { return self }
    var storedProperties : LeftMenuViewModelStoredProperties { return self  }
}
