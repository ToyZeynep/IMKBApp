//
//  LoginViewModel.swift
//  IMKBApp
//
//  Created by MacOS on 16.11.2021.
//

import Foundation
import RxSwift
import Action

protocol LoginViewModelInput {
    
}

protocol LoginViewModelOutput {
    var handshakeResponse: PublishSubject<HandshakeResponse> { get }
}

protocol LoginViewModel {
    var input: LoginViewModelInput { get }
    var output: LoginViewModelOutput { get }
    
    func getAuth()
}

extension LoginViewModel where Self: LoginViewModelInput & LoginViewModelOutput {
    var input: LoginViewModelInput { return self }
    var output: LoginViewModelOutput { return self }
}
