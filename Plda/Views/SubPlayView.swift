//
//  SubPlayView.swift
//  Plda
//
//  Created by 최유경 on 2023/08/01.
//

import SwiftUI

struct SubPlayView: View {
    
    var body: some View {
        
        @State var title1: [String] = ["제목1", "제목2", "제목3"]
        
        ScrollView(.vertical, showsIndicators: true){
            VStack{
                ForEach(title1,id:\.self) { t1 in
                    HStack{
                        Image("playlist1")
                            .resizable()
                            .frame(width: 40, height: 40)
                            .clipped()
                            .cornerRadius(12)
                            .padding(.leading,10)
                        
                        VStack(spacing: 5){
                            
                            HStack{
                                Text(t1)
                                    .font(
                                        Font.custom("Pretendard", size: 16)
                                            .weight(.bold)
                                    )
                                    .kerning(0.384)
                                    .multilineTextAlignment(.center)
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
                                    .multilineTextAlignment(.center)
                                    .foregroundColor(Color(red: 0.4, green: 0.4, blue: 0.4))
                                Spacer()
                                
                                Text("20230704")
                                    .font(
                                        Font.custom("Pretendard", size: 12)
                                            .weight(.medium)
                                    )
                                    .kerning(0.288)
                                    .multilineTextAlignment(.center)
                                    .foregroundColor(Color(red: 0.4, green: 0.4, blue: 0.4))
                                
                            }
                            
                        }
                        .padding(EdgeInsets(top: 10, leading: 3, bottom: 10, trailing: 10))
                        
                    }
                    .background(Color(red: 0.95, green: 0.95, blue: 0.95))
                    .cornerRadius(12)
                    .padding(EdgeInsets(top: 5, leading: 20, bottom:0, trailing: 20))
                    
                }
                
            } //VStack
            .padding(.top,12)
            .padding(.bottom,30)
            
        } //스크롤뷰
        
        .background(Image("background")
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            .edgesIgnoringSafeArea(.all))
        
    }
}
