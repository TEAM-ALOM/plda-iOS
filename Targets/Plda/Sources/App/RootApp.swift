//
//  RootApp.swift
//  Plda
//
//  Created by 송영모 on 2023/08/11.
//  Copyright © 2023 alom.com. All rights reserved.
//

import SwiftUI

import ComposableArchitecture

@main
struct RootApp: App {
    
    init() {
          Thread.sleep(forTimeInterval: 2)
      }
    
    var body: some Scene {
        WindowGroup {
            RootView(
                store: Store(initialState: RootStore.State()) {
                    RootStore()
                        ._printChanges()
                }
            )
        }
    }
}
