//
//  OnboardingUserInfoStore.swift
//  Plda
//
//  Created by 송영모 on 2023/08/11.
//  Copyright © 2023 alom.com. All rights reserved.
//

import ComposableArchitecture

struct OnboardingUserInfoStore: Reducer {
    
    struct State: Equatable {
        var name: String
        
        @PresentationState var alert: AlertState<Action.Alert>?
        
        init(name: String = "", alert: AlertState<Action.Alert>? = nil) {
            self.name = name
            self.alert = alert
        }
    }
    
    enum Action: Equatable {
        case nextButtonTapped
        
        case setName(String)
        case alert(PresentationAction<Alert>)
        case delegate(Delegate)
        
        enum Delegate {
            case push
        }
        enum Alert: Equatable {
            case confirmDeletion
        }
    }
    
    var body: some ReducerOf<Self> {
        Reduce { state, action in
            switch action {
            case let .setName(name):
                state.name = name
                return .none
                
            case .nextButtonTapped:
                if state.name.isEmpty {
                    state.alert = AlertState {
                        TextState("정보를 입력해주세요")
                    } actions: {
                        ButtonState(role: .destructive, action: .confirmDeletion) {
                            
                            TextState("확인")
                        }
                    }
                    return .none
                } else {
                    return .send(.delegate(.push))
                }
                
                
            default:
                return .none
            }
        }

        .ifLet(\.$alert, action: /Action.alert)
    }
}
