//
//  CallList.swift
//  Todo
//
//  Created by  on 25/04/2022.
//

import SwiftUI

struct CallListView: View {
    
    private var callListViewModel = CallListViewModel(_service: ServiceIpml())
    @State private var items = [Contact]()

    var body: some View {
        List(items, id: \.id) { item in
            VStack(alignment: .leading, spacing: 15) {
                Spacer()
                Text("Name: " + (item.name))
                    .font(.headline)
                
                Text("Number: \(item.number)")
                    .font(.headline)
                Spacer()
            }
        }
        .task {
            items = await callListViewModel.getContacts()
        }
        .navigationBarTitleDisplayMode(.inline)
        .toolbar { // <2>
            ToolbarItem(placement: .principal) { // <3>
                VStack {
                    Text("Call List").font(.headline)
                }
            }
        }
    }
}
