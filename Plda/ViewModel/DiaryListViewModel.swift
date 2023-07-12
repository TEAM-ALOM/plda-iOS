//
//  DiaryListViewModel.swift
//  Plda
//
//  Created by 최유경 on 2023/07/11.
//

import SwiftUI

//ViewMdoel
class DiaryListViewModel: ObservableObject {
    @Published var diary01  = DiaryList(title: "쌀국수 먹은 날", tag: ["#맛집","#행복"],day: 20200823)

    var Title: String {
        diary01.title
    }
    var Tag: [String] {
        diary01.tag
    }
    var Day: String {
        String(diary01.day)
    }
}
