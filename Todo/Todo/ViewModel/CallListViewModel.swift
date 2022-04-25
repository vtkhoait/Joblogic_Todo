//
//  CallListViewModel.swift
//  Todo
//
//  Created by  on 26/04/2022.
//

import Foundation

class CallListViewModel {
    var service: Service?
    
    init(_service: Service) {
        service = _service
    }
    
    func getContacts() async -> [Contact] {
        return await service?.getContact(urlString: "https://my-json-server.typicode.com/imkhan334/demo-1/call") ?? []
    }
    
}
