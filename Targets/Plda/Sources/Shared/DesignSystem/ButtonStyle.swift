//
//  ButtonStyle.swift
//  Plda
//
//  Created by 김채빈 on 2023/08/30.
//  Copyright © 2023 alom.com. All rights reserved.
//

import SwiftUI

struct roundedRectangleBorder: ButtonStyle {
    var backgroundColor: Color = .lightGreen
    var foregroundColor: Color = .white

    func makeBody(configuration: Configuration) -> some View {
        configuration.label
            .frame(width: 350, height: 38)
            .background(backgroundColor)
            .cornerRadius(12)
            .font(.bold16)
            .foregroundColor(foregroundColor)
    }
}

struct roundedRectangleBorder_Previews: PreviewProvider {
    static var previews: some View {
        Button("Hello"){}
            .buttonStyle(roundedRectangleBorder())
    }
}
