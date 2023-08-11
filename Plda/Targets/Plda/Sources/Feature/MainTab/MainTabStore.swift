//
//  MainTabStore.swift
//  Plda
//
//  Created by 송영모 on 2023/08/11.
//  Copyright © 2023 alom.com. All rights reserved.
//


import ComposableArchitecture

struct MainTabStore: Reducer {

    struct State: Equatable {
        
    }
    
    enum Action: Equatable {
        case empty
    }
    
    public var body: some Reducer<State, Action> {
        Reduce { state, action in
            switch action {
            default: return .none
            }
        }
    }
}
