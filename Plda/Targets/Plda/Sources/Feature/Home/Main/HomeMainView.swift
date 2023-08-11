//
//  HomeMainView.swift
//  Plda
//
//  Created by 송영모 on 2023/08/11.
//  Copyright © 2023 alom.com. All rights reserved.
//

import SwiftUI

import ComposableArchitecture

public struct HomeMainView: View {
    let store: StoreOf<HomeMainStore>
    
    public var body: some View {
        WithViewStore(self.store, observe: { $0 }) { viewStore in
            VStack {
                Text("Home Main View")
                
                Button("my page") {
                    viewStore.send(.nextButtonTapped)
                }
            }
        }
    }
}
