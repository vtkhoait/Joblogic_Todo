//
//  SellListView.swift
//  Todo
//
//  Created by  on 25/04/2022.
//

import SwiftUI
import CoreData

struct SellListView: View {

    @FetchRequest(
        sortDescriptors: [NSSortDescriptor(keyPath: \Item.id, ascending: true)],
        animation: .default)
    private var items: FetchedResults<Item>

    var body: some View {
        List(items, id: \.id) { item in
            VStack(alignment: .leading, spacing: 15) {
                Spacer()
                Text("Name: " + (item.name ?? ""))
                    .font(.headline)
                
                Text("Price: \(item.price)")
                    .font(.headline)

                Text("Quantity: \(item.quantity)")
                    .font(.headline)
                Spacer()
                
            }
        }
        .navigationBarTitleDisplayMode(.inline)
        .toolbar { // <2>
            ToolbarItem(placement: .principal) { // <3>
                VStack {
                    Text("Sell List").font(.headline)
                }
            }
        }
    }
}

