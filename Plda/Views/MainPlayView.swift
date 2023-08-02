//
//  MainPlayView.swift
//  Plda
//
//  Created by 최유경 on 2023/08/01.
//

import SwiftUI

struct MainPlayView: View {
    var body: some View {
        @State var title1: [String] = ["Ice Cream Cake", "Butter", "콩떡빙수"]
        ScrollView(.vertical, showsIndicators: true){
            
            VStack{
                ForEach(title1,id:\.self) { t1 in
                    HStack{
                        Spacer()
                        HStack(spacing: 15){
                            VStack{
                                Image("playlist1")
                                    .resizable()
                                    .frame(height: 150)
                                    .clipped()
                                    .cornerRadius(5)
                                HStack{
                                    Text(t1)
                                        .font(
                                            Font.custom("Pretendard", size: 16)
                                                .weight(.bold)
                                        )
                                        .kerning(0.384)
                                        .foregroundColor(Color(red: 0.13, green: 0.13, blue: 0.13))
                                    Spacer()
                                }
                                HStack{
                                    Text("가수")
                                        .font(
                                            Font.custom("Pretendard", size: 12)
                                                .weight(.medium)
                                        )
                                        .kerning(0.288)
                                        .foregroundColor(Color(red: 0.32, green: 0.32, blue: 0.32))
                                    Spacer()
                                }
                            }
                            .padding(EdgeInsets(top: 10, leading: 10, bottom: 10, trailing: 10))
                            .background(.white)
                            .cornerRadius(5)
                            
                            VStack{
                                Image("playlist1")
                                    .resizable()
                                    .frame(height: 150)
                                    .clipped()
                                    .cornerRadius(5)
                                
                                
                                HStack{
                                    Text(t1)
                                        .font(
                                            Font.custom("Pretendard", size: 16)
                                                .weight(.bold)
                                        )
                                        .kerning(0.384)
                                        .foregroundColor(Color(red: 0.13, green: 0.13, blue: 0.13))
                                    Spacer()
                                }
                                HStack{
                                    Text("가수")
                                        .font(
                                            Font.custom("Pretendard", size: 12)
                                                .weight(.medium)
                                        )
                                        .kerning(0.288)
                                        .foregroundColor(Color(red: 0.32, green: 0.32, blue: 0.32))
                                    Spacer()
                                }
                                
                            }
                            .padding(EdgeInsets(top: 10, leading: 10, bottom: 10, trailing: 10))
                            .background(.white)
                            .cornerRadius(5)
                            
                        }
                        Spacer()
                        
                    }
                    
                }
                
                .padding(EdgeInsets(top: 5, leading: 15, bottom:0, trailing: 15))
                
            }
            .padding(.top,12)
            .padding(.bottom,30)
        }
        .background(Image("background")
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            .edgesIgnoringSafeArea(.all))
    }
}

