//
//  PickerNumberLabel.swift
//  LotteryPicker
//
//  Created by Jiaming Guo on 2022-08-19.
//

import SwiftUI

struct PickerNumberLabel: View {
    let selected: Bool
    let number: Int
    let backgroundColor: Color
    
    var body: some View {
        ZStack {
            Circle()
                .foregroundColor(selected ? backgroundColor : .white)
                .frame(width: 45, height: 45)
            Text("\(number)")
                .bold()
                .foregroundColor(selected ? .white : .black)
        }
        .overlay(
            Circle()
                .strokeBorder(lineWidth: 1, antialiased: true)
                .foregroundColor(.black)
        )
        .padding(.horizontal)
    }
}

struct PickerNumberLabel_Previews: PreviewProvider {
    static var previews: some View {
        PickerNumberLabel(selected: true, number: 1, backgroundColor: Color.blue)
    }
}
