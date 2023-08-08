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
    //var diaryimage : [Image]
    var day : Int
}

//Views
struct SubDiaryView: View {
    
    @StateObject var viewModel = DiaryViewModel()
    
    var body: some View {
        
        @State var title1: [String] = ["제목1", "제목2", "제목3"]
        
        ScrollView(.vertical, showsIndicators: true){
            VStack{
                ForEach(title1,id:\.self) { t1 in //사진 없는 일기
                    HStack{
                        VStack(spacing: 5){
                            HStack{
                                Text(t1)
                                    .font(.Bold16)
                                    .multilineTextAlignment(.center)
                                    .foregroundColor(.black)
                                Spacer()
                                
                            }
                            HStack{
                                Text("태그 1 태그 2 태그 3")
                                    .font(.Medium12)
                                    .multilineTextAlignment(.center)
                                    .foregroundColor(.Gray80)
                                Spacer()
                                
                                Text("20230704")
                                    .font(.Medium12)
                                    .multilineTextAlignment(.center)
                                    .foregroundColor(.Gray80)
                                
                            }
                            
                        }
                        .padding(EdgeInsets(top: 10, leading: 10, bottom: 10, trailing: 10))
                        
                    }
                    .background(Color.Gray10)
                    .cornerRadius(6)
                    .padding(EdgeInsets(top: 5, leading: 20, bottom:0, trailing: 20))
                }
                
            } //VStack
            .padding(.top,12)
            .padding(.bottom,30)
            
        } //스크롤뷰
        
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
