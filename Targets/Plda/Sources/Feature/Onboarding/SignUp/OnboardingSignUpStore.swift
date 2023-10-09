//
//  OnboardingSignUpStore.swift
//  Plda
//
//  Created by 송영모 on 2023/08/11.
//  Copyright © 2023 alom.com. All rights reserved.
//

import Foundation
import ComposableArchitecture

struct OnboardingSignUpStore: Reducer {

    struct State: Equatable {
        var tapButton: Bool = false
        //var showingAlert: Bool = false

        var tapButtonFemale: Bool = false
        var tapButtonMale: Bool = false
        
        @BindingState var selectedDate: Date = .now
    }
    
    enum Action: BindableAction, Equatable {
        case binding(BindingAction<State>)
        
        case nextButtonTapped
        case femaleButtonTapped
        case maleButtonTapped
        
        case setDate(Date)
        
        //case showingAlertTapped
        
        case delegate(Delegate)
        
        enum Delegate: Equatable {
            case push
        }
    }
    
    var body: some ReducerOf<Self> {
        BindingReducer()
        Reduce { state, action in
            switch action {
            case .nextButtonTapped:
                return .send(.delegate(.push))
                
            case .femaleButtonTapped:
                state.tapButtonFemale.toggle()
                state.tapButtonMale = false
                state.tapButton = true
                return .none
                
            case .maleButtonTapped:
                state.tapButtonMale.toggle()
                state.tapButtonFemale = false
                state.tapButton = true

                return .none
                
            case let .setDate(date):
                state.selectedDate = date
                return .none
                                
//            case .showingAlertTapped:
//                state.showingAlert = true
//                return .none
                
            default:
                return .none
            }
        }
    }
}
