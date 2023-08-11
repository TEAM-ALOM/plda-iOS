//
//  MainTabStore.swift
//  Plda
//
//  Created by 송영모 on 2023/08/11.
//  Copyright © 2023 alom.com. All rights reserved.
//


import ComposableArchitecture

struct MainTabStore: Reducer {

    enum State: Equatable {
        case home(HomeNavigationStackStore.State = .init())
        
        init() {
            self = .home(.init())
        }
    }
    
    enum Action: BindableAction, Equatable {
        case binding(BindingAction<State>)
        
        case home(HomeNavigationStackStore.Action)
    }
    
    public var body: some ReducerOf<Self> {
        BindingReducer()
        
        Reduce { state, action in
            switch action {
            default: return .none
            }
        }
    }
}
