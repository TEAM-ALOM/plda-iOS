//
//  MainDiaryView.swift
//  Plda
//
//  Created by 최유경 on 2023/07/15.
//

import SwiftUI

struct MainDiaryView: View {
    var body: some View {
        @StateObject var viewModel = DiaryViewModel()
        @State var title1 = ["제목1", "제목2", "제목3"]
        
        ScrollView(.vertical, showsIndicators: true){
            VStack{
                ForEach(title1, id: \.self) { title1 in
                    VStack(spacing :12 ){
                        Rectangle()
                            .foregroundColor(.clear)
                            .frame(width: 350, height: 65)
                            .background(.white)
                            .cornerRadius(7)
                            .shadow(color: Color(red: 0.26, green: 0.48, blue: 0.36).opacity(0.3), radius: 10, x: 0, y: 4)
                            .overlay(
                                HStack(alignment: .center, spacing: 0) {
                                    VStack(alignment: .leading ,spacing :4){
                                        Text("제목")
                                            .font(
                                                Font.custom("Pretendard", size: 24)
                                                    .weight(.bold)
                                            )
                                            .kerning(0.576)
                                            .foregroundColor(Color(red: 0.13, green: 0.13, blue: 0.13))
                                            .padding(EdgeInsets(top: 4, leading: 0, bottom: 0, trailing: 0))
                                        
                                        HStack{
                                            
                                            // body 4
                                            Text("태그 1 태그 2 태그 3 ")
                                                .font(
                                                    Font.custom("Pretendard", size: 12)
                                                        .weight(.medium)
                                                )
                                                .kerning(0.288)
                                                .foregroundColor(Color(red: 0.4, green: 0.4, blue: 0.4))
                                                .frame(width: 111, height: 14.08333, alignment: .topLeading)
                                            Spacer(minLength: 70)
                                            
                                            Text(viewModel.Day) //날짜
                                                .font(
                                                    Font.custom("Pretendard", size: 12)
                                                        .weight(.medium)
                                                )
                                                .kerning(0.288)
                                                .multilineTextAlignment(.trailing)
                                                .foregroundColor(Color(red: 0.4, green: 0.4, blue: 0.4))
                                        }//태그,날짜 조절
                                    }
                                    //제목, 태그,날짜 조절
                                }
                                //큰 사각형 조절
                                    .padding(EdgeInsets(top: 0, leading: 20, bottom: 0, trailing: 20))
                            )
                    }
                }
            }//VStack
            .padding(EdgeInsets(top: 90, leading: 20, bottom:0, trailing: 20))
            
            VStack{
                ForEach(title1, id: \.self) { title1 in
                    
                    VStack(spacing :12 ){
                        Rectangle()
                            .foregroundColor(.clear)
                            .frame(width: 350, height: 210)
                            .background(.white)
                            .cornerRadius(7)
                            .shadow(color: Color(red: 0.26, green: 0.48, blue: 0.36).opacity(0.3), radius: 10, x: 0, y: 4)
                            .overlay(
                                VStack{
                                    RoundedRectangle(cornerRadius: 4)
                                        .inset(by: -1)
                                        .frame(width: 316.27939, height: 131.1628, alignment: .leading)
                                        .background(Color(red: 0.95, green: 0.95, blue: 0.95))
                                        .overlay(
                                            Image("diary")
                                                .aspectRatio(contentMode: .fill)
                                            
                                        )
                                        .clipped()
                                        .cornerRadius(4)
                                        .padding(0)
                                    
                                    HStack {
                                        VStack(alignment: .leading ,spacing :4){
                                            Text("제목")
                                                .font(
                                                    Font.custom("Pretendard", size: 24)
                                                        .weight(.bold)
                                                )
                                                .kerning(0.576)
                                                .foregroundColor(Color(red: 0.13, green: 0.13, blue: 0.13))
                                            
                                            
                                            
                                            HStack{
                                                Text("태그 1 태그 2 태그 3 ")
                                                    .font(
                                                        Font.custom("Pretendard", size: 12)
                                                            .weight(.medium)
                                                    )
                                                    .kerning(0.288)
                                                    .foregroundColor(Color(red: 0.4, green: 0.4, blue: 0.4))
                                                    .frame(width: 111, height: 14.08333, alignment: .topLeading)
                                                
                                                Spacer(minLength: 70)
                                                
                                                Text(viewModel.Day) //날짜
                                                    .font(
                                                        Font.custom("Pretendard", size: 12)
                                                            .weight(.medium)
                                                    )
                                                    .kerning(0.288)
                                                    .multilineTextAlignment(.trailing)
                                                    .foregroundColor(Color(red: 0.4, green: 0.4, blue: 0.4))
                                                
                                                
                                                
                                                
                                            }//태그, 날짜 조절
                                            
                                            
                                        }
                                        //제목, 태그, 날짜 조절
                                        
                                    }
                                    //큰 사각형 조절
                                    .padding(EdgeInsets(top: 0, leading: 20, bottom: 0, trailing: 20))
                                    
                                }
                                
                            )
                    }
                }
            }//VStack
            .padding(EdgeInsets(top: 0, leading: 20, bottom:200, trailing: 20))
            
            
        }//스크롤뷰
        .background(Image("background")
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            .edgesIgnoringSafeArea(.all))
    }
}
