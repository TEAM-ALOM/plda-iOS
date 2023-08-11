//
//  MainTabView.swift
//  Plda
//
//  Created by 송영모 on 2023/08/11.
//  Copyright © 2023 alom.com. All rights reserved.
//

import SwiftUI

import ComposableArchitecture

public struct MainTabView: View {
    let store: StoreOf<MainTabStore>
    
    public var body: some View {
        SwitchStore(self.store) {
            switch $0 {
            case .home:
                CaseLet(/MainTabStore.State.home, action: MainTabStore.Action.home) {
                    HomeNavigationStackView(store: $0)
                }
            }
        }
    }
}
