//
//  RootView.swift
//  Plda
//
//  Created by 송영모 on 2023/08/11.
//  Copyright © 2023 alom.com. All rights reserved.
//

import SwiftUI

import ComposableArchitecture

struct RootView: View {
    let store: StoreOf<RootStore>
    
    init(store: StoreOf<RootStore>) {
        self.store = store
    }
    
    var body: some View {
        SwitchStore(self.store) {
            switch $0 {
            case .onboarding:
                CaseLet(/RootStore.State.onboarding, action: RootStore.Action.onboarding) {
                    OnboardingNavigationStackView(store: $0)
                }
            case .mainTab:
                CaseLet(/RootStore.State.mainTab, action: RootStore.Action.mainTab) {
                    MainTabView(store: $0)
                }
            }
        }
    }
}
