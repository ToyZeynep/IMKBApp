//
//  LoginViewModelImpl.swift
//  IMKBApp
//
//  Created by MacOS on 16.11.2021.
//

import Foundation
import RxSwift
import RxCocoa
import XCoordinator

class LoginViewModelImpl: LoginViewModel, LoginViewModelInput, LoginViewModelOutput {
    
    let disposeBag = DisposeBag()
    
    // MARK: -Inputs-
    
    // MARK: -Outputs-
    
    // MARK: -Stored properties-
    
    private let router: UnownedRouter<AppRoute>
    internal let tokenUseCase = TokenUseCase()
    
    // MARK: -Initialization-
    
    init(router: UnownedRouter<AppRoute>) {
        self.router = router
        
        getAuth()
    }
   
    func getAuth(){
        let deviceID = UIDevice.current.identifierForVendor!.uuidString
        let modelName = UIDevice.modelName
        let systemVersion = UIDevice.current.systemVersion
        var params : [String: Any] = [String: Any]()
        
        params["deviceId"] = deviceID
        params["systemVersion"] = systemVersion
        params["platformName"] = "IOS"
        params["deviceModel"] = modelName
        params["manifacturer"] = "Apple"
        
        tokenUseCase.getToken(params: params).subscribe(onNext : {response in
            if  response.status?.isSuccess != false {
                self.router.trigger(.stockList)
            }
            
            
        }).disposed(by: disposeBag)
    }
}
