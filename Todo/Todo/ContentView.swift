//
//  ContentView.swift
//  Todo
//
//  Created by  on 25/04/2022.
//

import SwiftUI
import CoreData

struct ContentView: View {
    
    @State var selection: Int? = nil

    let size = UIScreen.main.bounds.size
    var body: some View {
        NavigationView {
        
            VStack(alignment: .center, spacing: size.height/5) {
                
                NavigationLink(destination: CallListView(), tag: 1, selection: $selection) {
                    Button("Call List") {
                        self.selection = 1
                    }
                    .padding(10)
                    .frame(maxWidth: size.width/2)
                    .background(Color.gray)
                    .foregroundColor(.white)
                    .clipShape(RoundedRectangle(cornerRadius: 10.0, style: .continuous))
                }
                
                NavigationLink(destination: BuyListView(), tag: 2, selection: $selection) {
                    Button("Buy List") {
                        self.selection = 2
                    }
                    .padding(10)
                    .frame(maxWidth: size.width/2)
                    .background(Color.gray)
                    .foregroundColor(.white)
                    .clipShape(RoundedRectangle(cornerRadius: 10.0, style: .continuous))
                }
                
                NavigationLink(destination: SellListView(), tag: 3, selection: $selection) {
                    Button("Sale List") {
                        self.selection = 3
                    }
                    .padding(10)
                    .frame(maxWidth: size.width/2)
                    .background(Color.gray)
                    .foregroundColor(.white)
                    .clipShape(RoundedRectangle(cornerRadius: 10.0, style: .continuous))
                }
                
            }
            .navigationBarTitleDisplayMode(.inline)
                    .toolbar { // <2>
                        ToolbarItem(placement: .principal) { // <3>
                            VStack {
                                Text("Title").font(.headline)
                            }
                        }
                    }
        }
    }
}
