//
//  WritingStore.swift
//  Plda
//
//  Created by 김채빈 on 2023/09/04.
//  Copyright © 2023 alom.com. All rights reserved.
//

import ComposableArchitecture
import SwiftUI

struct Diary: Equatable, Identifiable {
    let id: UUID
    var title: String = ""
    var tag: String = ""
    var date: Date = Date()
    var content: String = ""
    var imageData: Data? = nil
    var songTitle: String = ""
    var singer: String = ""
    var songCover: Data? = nil
}

struct WritingStore: Reducer {
    struct State: Equatable {
        var diary: Diary
    }
    
    enum Action: Equatable {
        case saveButtonTapped
        case cancelButtonTapped
        case setTitle(String)
        case setTag(String)
        case setContent(String)
    }
    func reduce(into state: inout State, action: Action) -> Effect<Action> {
        switch action {
        case .saveButtonTapped:
            return .none
        
        case .cancelButtonTapped:
            return .none
            
        case let .setTitle(title):
            state.diary.title = title
            return .none
            
        case let .setTag(tag):
            state.diary.tag = tag
            return .none
            
        case let .setContent(content):
            state.diary.content = content
            return .none
        }
    }
    
    
}

