//
//  FontManager.swift
//  Plda
//
//  Created by 최유경 on 2023/08/08.
//

import Foundation
import SwiftUI


extension Font {
    // ExtraBold
    static let extraBold: Font = PldaFontFamily.Pretendard.extraBold.swiftUIFont(size: 36)

    // Bold
    static let bold24: Font = PldaFontFamily.Pretendard.bold.swiftUIFont(size: 24)
    static let bold16: Font = PldaFontFamily.Pretendard.bold.swiftUIFont(size: 16)
    
    // SemiBold
    static let semiBold: Font = PldaFontFamily.Pretendard.semiBold.swiftUIFont(size: 20)
    
    // Medium
    static let medium16: Font = PldaFontFamily.Pretendard.medium.swiftUIFont(size: 16)
    static let medium12: Font = PldaFontFamily.Pretendard.medium.swiftUIFont(size: 12)
    
}
