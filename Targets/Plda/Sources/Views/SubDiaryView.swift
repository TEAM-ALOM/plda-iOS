//
//  DiaryListView.swift
//  Plda
//
//  Created by 최유경 on 2023/07/11.
//

import SwiftUI
import Foundation

//Models
struct DiaryList {
    var title: String
    var tag: [String]
    var day : Int
}

//Views
struct SubDiaryView: View {
        
    var body: some View {
        ScrollView(.vertical, showsIndicators: true){
            diaryListView()
        }
        .background(Image("background")
            .resizable()
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            .edgesIgnoringSafeArea(.all))
        
        ZStack{
            Button(action: {}) {
                VStack{
                    Spacer()
                    Image("pencil")
                        .frame(width: 42, height: 42)
                        .padding(.bottom,50)
                        .padding(.horizontal,40)
                }
            }
        }
    }
    
}
private func diaryListView() -> some View {
    @State var title: [String] = ["제목1", "제목2", "제목3"]
    
    return VStack{
        ForEach(title,id:\.self) { index in
            HStack{
                VStack(spacing: 5){
                    HStack{
                        Text(index)
                            .font(.bold16)
                            .multilineTextAlignment(.center)
                            .foregroundColor(.black)
                        Spacer()
                    }
                    HStack{
                        Text("태그 1 태그 2 태그 3")
                            .font(.medium12)
                            .multilineTextAlignment(.center)
                            .foregroundColor(.gray80)
                        Spacer()
                        
                        Text("20230704")
                            .font(.medium12)
                            .multilineTextAlignment(.center)
                            .foregroundColor(.gray80)
                    }
                }
                .padding(EdgeInsets(top: 10, leading: 10, bottom: 10, trailing: 10))
            }
            .background(Color.gray10)
            .cornerRadius(6)
            .padding(EdgeInsets(top: 5, leading: 20, bottom:0, trailing: 20))
        }
    } //VStack
    .padding(.top,12)
    .padding(.bottom,30)
    
}
