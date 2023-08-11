//
//  RootStore.swift
//  Plda
//
//  Created by 송영모 on 2023/08/11.
//  Copyright © 2023 alom.com. All rights reserved.
//

import ComposableArchitecture

struct RootStore: Reducer {
    
    enum State: Equatable {
        case onboarding(OnboardingNavigationStackStore.State = .init())
        case mainTab(MainTabStore.State = .init())
        
        init() {
            //TODO: main과 onboarding 스위칭
            self = .onboarding(.init())
//            self = .mainTab(.init())
        }
    }
    
    enum Action: Equatable {
        case onboarding(OnboardingNavigationStackStore.Action)
        case mainTab(MainTabStore.Action)
    }
    
    public var body: some ReducerOf<Self> {
        Reduce { state, action in
            switch action {
            case .onboarding(.delegate(.complete)):
                //온보딩 종료 후 메인 탭으로 이동
                state = .mainTab(.init())
                return .none
                
            default: return .none
            }
        }
        
        .ifCaseLet(/State.onboarding, action: /Action.onboarding) {
            OnboardingNavigationStackStore()
        }
        .ifCaseLet(/State.mainTab, action: /Action.mainTab) {
            MainTabStore()
        }
    }
}
