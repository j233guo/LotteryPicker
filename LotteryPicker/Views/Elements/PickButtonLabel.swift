//
//  PickButtonLabel.swift
//  LotteryPicker
//
//  Created by Jiaming Guo on 2022-08-19.
//

import SwiftUI

struct PickButtonLabel: View {
    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 15)
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
}

struct PickButtonLabel_Previews: PreviewProvider {
    static var previews: some View {
        PickButtonLabel()
    }
}
