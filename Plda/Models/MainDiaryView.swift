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
        @State var title1: [String] = ["제목1", "제목2", "제목3"]
        
        ScrollView(.vertical, showsIndicators: true){
            VStack{
                ForEach(title1,id:\.self) { t1 in //사진 없는 일기
                    HStack{
                        VStack{
                            HStack{
                                Text(t1)
                                    .font(
                                        Font.custom("Pretendard", size: 24)
                                            .weight(.bold)
                                    )
                                    .kerning(0.576)
                                    .foregroundColor(Color(red: 0.13, green: 0.13, blue: 0.13))
                                Spacer()
                                
                            }
                            HStack{
                                Text("태그 1 태그 2 태그 3")
                                    .font(
                                        Font.custom("Pretendard", size: 12)
                                            .weight(.medium)
                                    )
                                    .kerning(0.288)
                                    .foregroundColor(Color(red: 0.4, green: 0.4, blue: 0.4))
                                
                                Spacer()
                                
                                Text("20230706")
                                    .font(
                                        Font.custom("Pretendard", size: 12)
                                            .weight(.medium)
                                    )
                                    .kerning(0.288)
                                    .foregroundColor(Color(red: 0.4, green: 0.4, blue: 0.4))
                            }
                        }
                        .padding(EdgeInsets(top: 10, leading: 10, bottom: 10, trailing: 10))
                        
                    }
                    .background(.white)
                    .cornerRadius(6)
                    .shadow(color: Color(red: 0.26, green: 0.48, blue: 0.36).opacity(0.3), radius: 10, x: 0, y: 4)
                    .padding(EdgeInsets(top: 5, leading: 20, bottom:0, trailing: 20))
                    
                }
                ForEach(title1,id:\.self) { t1 in //사진 있는 일기
                    HStack{
                        VStack{
                            HStack{
                                Image("diary")
                                    .aspectRatio(contentMode: .fill)
                                    .frame(height:130)
                                    .clipped()
                                    .cornerRadius(4)
                                    .padding(0)
                                    .clipShape(Rectangle())
                                
                            }
                            
                            HStack{
                                Text(t1)
                                    .font(
                                        Font.custom("Pretendard", size: 24)
                                            .weight(.bold)
                                    )
                                    .kerning(0.576)
                                    .foregroundColor(Color(red: 0.13, green: 0.13, blue: 0.13))
                                Spacer()
                                
                            }
                            HStack{
                                Text("태그 1 태그 2 태그 3")
                                    .font(
                                        Font.custom("Pretendard", size: 12)
                                            .weight(.medium)
                                    )
                                    .kerning(0.288)
                                    .foregroundColor(Color(red: 0.4, green: 0.4, blue: 0.4))
                                
                                Spacer()
                                
                                Text("20230706")
                                    .font(
                                        Font.custom("Pretendard", size: 12)
                                            .weight(.medium)
                                    )
                                    .kerning(0.288)
                                    .foregroundColor(Color(red: 0.4, green: 0.4, blue: 0.4))
                            }
                        }
                        .padding(EdgeInsets(top: 10, leading: 10, bottom: 10, trailing: 10))
                        
                    }//큰 HStack
                    .background(.white)
                    .cornerRadius(6)
                    .shadow(color: Color(red: 0.26, green: 0.48, blue: 0.36).opacity(0.3), radius: 10, x: 0, y: 4)
                    .padding(EdgeInsets(top: 5, leading: 20, bottom:0, trailing: 20))
                    
                } //사진 있는 Foreach문
                
            } //VStack
            .padding(.top,12)
            .padding(.bottom,30)
            
        } //스크롤뷰
        
        .background(Image("background")
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



