//
//  BuyListViewModel.swift
//  Todo
//
//  Created by  on 26/04/2022.
//

import Foundation

class BuyListViewModel {
    var service: Service?
    
    init(_service: Service) {
        service = _service
    }
    
    func getProduc() async -> [Product] {
        return await service?.getProducts(urlString: "https://my-json-server.typicode.com/imkhan334/demo-1/buy") ?? []
    }
    
    
}
