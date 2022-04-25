//
//  Persistence.swift
//  Todo
//
//  Created by  on 25/04/2022.
//

import CoreData

let datas = [ [ "id": 1, "name": "Table", "price": 12000, "quantity": 1, "type": 2],
             ["id": 2, "name": "TV","price": 38000,"quantity": 2,"type": 2],
             ["id": 3, "name": "Iphone X", "price": 150000, "quantity": 1, "type": 2] ]

struct PersistenceController {
    static let shared: PersistenceController = {
        let result = PersistenceController(inMemory: true)
        let viewContext = result.container.viewContext
        for data in datas {
            let newItem = Item(context: viewContext)
            newItem.id = Int32((data["id"] as? Int) ?? 0)
            newItem.name = (data["name"] as? String) ?? ""
            newItem.price = Int32((data["price"] as? Int) ?? 0)
            newItem.quantity = Int32((data["quantity"] as? Int) ?? 0)
            newItem.type = Int32((data["type"] as? Int) ?? 0)
            
            print((data["id"] as? Int) ?? 0)
            
        }
        do {
            try viewContext.save()
        } catch {
            // Replace this implementation with code to handle the error appropriately.
            // fatalError() causes the application to generate a crash log and terminate. You should not use this function in a shipping application, although it may be useful during development.
            let nsError = error as NSError
            fatalError("Unresolved error \(nsError), \(nsError.userInfo)")
        }
        return result
    }()


    let container: NSPersistentContainer

    init(inMemory: Bool = false) {
        container = NSPersistentContainer(name: "Todo")
        if inMemory {
            container.persistentStoreDescriptions.first!.url = URL(fileURLWithPath: "/dev/null")
        }
        container.loadPersistentStores(completionHandler: { (storeDescription, error) in
            if let error = error as NSError? {
                // Replace this implementation with code to handle the error appropriately.
                // fatalError() causes the application to generate a crash log and terminate. You should not use this function in a shipping application, although it may be useful during development.

                /*
                Typical reasons for an error here include:
                * The parent directory does not exist, cannot be created, or disallows writing.
                * The persistent store is not accessible, due to permissions or data protection when the device is locked.
                * The device is out of space.
                * The store could not be migrated to the current model version.
                Check the error message to determine what the actual problem was.
                */
                fatalError("Unresolved error \(error), \(error.userInfo)")
            }
        })
    }
}
