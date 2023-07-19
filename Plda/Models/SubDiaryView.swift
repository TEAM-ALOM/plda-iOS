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
struct DiaryListView: View {
    
    @StateObject var viewModel = DiaryViewModel()
    @State var titles = ["제목1", "제목2", "제목3","제목1", "제목2", "제목3","제목1", "제목2", "제목3"]
    //@State var Tags = viewModel.Tag
    
    var body: some View {
        ScrollView(.vertical, showsIndicators: true){
            VStack{
                ForEach(titles, id: \.self) { titles in
                    VStack(spacing :14 ){
                        
                        Rectangle() //큰 사각형
                            .foregroundColor(.clear)
                            .frame(width: 350, height: 65)
                            .background(Color(red: 0.95, green: 0.95, blue: 0.95))
                            .cornerRadius(12)
                        
                            .overlay(
                                HStack(alignment: .center, spacing: 0) {
                                    Rectangle() //작은 사각형
                                        .padding(4)
                                        .frame(width: 40, height: 40, alignment: .topLeading)
                                        .background(Color(red: 0.8, green: 0.8, blue: 0.8))
                                        .cornerRadius(12)
                                        .padding(EdgeInsets(top: 0, leading: 10, bottom: 0, trailing: 10))
                                        .overlay(
                                            Image("dairylist")
                                        )
                                    //.border(.gray)
                                    
                                    VStack(alignment: .leading ,spacing :5){
                                        Text(titles) //제목
                                            .frame(height: 20)
                                            .font(.custom("Pretendard-Bold", size: 16))
                                            .kerning(0.384)
                                            .multilineTextAlignment(.center)
                                            .foregroundColor(Color(red: 0.13, green: 0.13, blue: 0.13))
                                        //.border(.gray)
                                        
                                        
                                        HStack{
                                            Text("viewModel.Tag") //태그
                                                .font(.custom("Pretendard-Bold", size: 12))
                                                .kerning(0.288)
                                                .multilineTextAlignment(.center)
                                                .foregroundColor(Color(red: 0.4, green: 0.4, blue: 0.4))
                                            //.border(.gray)
                                            Spacer(minLength: 70)
                                            
                                            Text(viewModel.Day) //날짜
                                                .font(
                                                    Font.custom("Pretendard", size: 12)
                                                        .weight(.medium)
                                                )
                                            
                                                .kerning(0.288)
                                                .multilineTextAlignment(.trailing)
                                                .foregroundColor(Color(red: 0.4, green: 0.4, blue: 0.4))
                                            
                                        } //태그, 날짜 조절
                                        .padding(EdgeInsets(top: 0, leading: 0, bottom: 5, trailing: 0))
                                    }
                                    //제목, 태그, 날짜 조절
                                    .padding(EdgeInsets(top: 5, leading: 5, bottom: 0, trailing: 5))
                                    Spacer()
                                }
                            )}
                }//Foreach
            }//VStack
            .padding(EdgeInsets(top: 90, leading: 20, bottom:200, trailing: 20))
            
        }//스크롤 뷰
        .background(Image("background")
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            .edgesIgnoringSafeArea(.all))
    }
}





