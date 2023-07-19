//
//  PldaApp.swift
//  Plda
//
//  Created by 최유경 on 2023/07/07.
//

import SwiftUI

@main
struct PldaApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
                .onAppear{ //폰트 잘 적용되었는지 임시 확인용
                    for family: String in UIFont.familyNames {
                        print(family)
                        for names : String in UIFont.fontNames(forFamilyName: family){
                            print("=== \(names)")
                        }
                    }
                }
        }
    }
}
