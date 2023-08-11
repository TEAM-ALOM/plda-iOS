//
//  KeyboardManager.swift
//  Plda
//
//  Created by 최유경 on 2023/08/09.
//

import SwiftUI

extension View {
    func hideKeyboard() {
        UIApplication.shared.sendAction(#selector(UIResponder.resignFirstResponder), to: nil, from: nil, for: nil)
    }
}

