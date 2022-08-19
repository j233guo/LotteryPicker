//
//  ContentView.swift
//  LotteryPicker
//
//  Created by Jiaming Guo on 2022-08-19.
//

import SwiftUI

struct ContentView: View {
    
    var body: some View {
        NavigationView {
            List {
                NavigationLink {
                    Picker649()
                } label: {
                    Text("Lotto 649")
                }
                NavigationLink {
                    PickerLottoMax()
                } label: {
                    Text("Lotto Max")
                }
            }
            .navigationTitle("Lottery Pickers")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
