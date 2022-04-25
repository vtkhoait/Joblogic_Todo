//
//  BuyListView.swift
//  Todo
//
//  Created by  on 25/04/2022.
//

import SwiftUI

struct BuyListView: View {
    
    private let buyListViewModel = BuyListViewModel(_service: ServiceIpml())
    @State private var items = [Product]()

    var body: some View {
        List(items, id: \.id) { item in
            VStack(alignment: .leading, spacing: 15) {
                Spacer()
                Text("Name: " + (item.name))
                    .font(.headline)
                
                Text("Price: \(item.price)")
                    .font(.headline)

                Text("Quantity: \(item.quantity)")
                    .font(.headline)
                
                Spacer()
                
            }
        }
        .task {
            items = await buyListViewModel.getProduc()
        }
        .navigationBarTitleDisplayMode(.inline)
        .toolbar { // <2>
            ToolbarItem(placement: .principal) { // <3>
                VStack {
                    Text("Buy List").font(.headline)
                }
            }
        }
        
    }
}
