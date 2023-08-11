//
//  HomeView.swift
//  Plda
//
//  Created by 송영모 on 2023/08/11.
//  Copyright © 2023 alom.com. All rights reserved.
//

import SwiftUI

import ComposableArchitecture

public struct HomeView: View {
    let store: StoreOf<HomeStore>
    
    public var body: some View {
        VStack {
            Text("Home View")
        }
    }
}
