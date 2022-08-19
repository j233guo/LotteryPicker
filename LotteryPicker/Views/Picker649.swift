//
//  Picker649.swift
//  LotteryPicker
//
//  Created by Jiaming Guo on 2022-08-19.
//

import SwiftUI

struct Picker649: View {
    @State private var selections: [Int] = []
    
    func pick() {
        selections = []
        while selections.count < 6 {
            var currPick = Int.random(in: 1...49)
            while selections.contains(currPick) {
                currPick = Int.random(in: 1...49)
            }
            selections.append(currPick)
        }
    }
    
    let gridItems = [
        GridItem(.fixed(UIScreen.main.bounds.width/10)),
        GridItem(.fixed(UIScreen.main.bounds.width/10)),
        GridItem(.fixed(UIScreen.main.bounds.width/10)),
        GridItem(.fixed(UIScreen.main.bounds.width/10)),
        GridItem(.fixed(UIScreen.main.bounds.width/10)),
        GridItem(.fixed(UIScreen.main.bounds.width/10)),
        GridItem(.fixed(UIScreen.main.bounds.width/10)),
        GridItem(.fixed(UIScreen.main.bounds.width/10)),
    ]
    
    var body: some View {
        VStack {
            LazyVGrid(columns: gridItems) {
                ForEach(1..<50) { i in
                    ZStack {
                        Circle()
                            .foregroundColor(selections.contains(i) ? .blue : .white)
                            .frame(width: 45, height: 45)
                        Text("\(i)")
                            .bold()
                            .foregroundColor(selections.contains(i) ? .white : .black)
                    }
                    .overlay(
                        Circle()
                            .strokeBorder(lineWidth: 2, antialiased: true)
                            .foregroundColor(.gray)
                    )
                    .padding(.horizontal)
                }
            }
            .padding()
            .padding(.top, 100)
            Button {
                pick()
            } label: {
                ZStack {
                    RoundedRectangle(cornerRadius: 10)
                        .frame(width: 200, height: 50)
                    HStack {
                        Image(systemName: "arrow.clockwise")
                            .foregroundColor(.white)
                        Text("Pick")
                            .foregroundColor(.white)
                            .font(.title3.bold())
                    }
                }
            }
            .padding(.vertical)
            Spacer()
        }
        .navigationBarTitle("649")
        .navigationBarTitleDisplayMode(.inline)
    }
}

struct Picker649_Previews: PreviewProvider {
    static var previews: some View {
        Picker649()
    }
}
