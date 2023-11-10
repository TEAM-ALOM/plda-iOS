//
//  MainDiaryView.swift
//  Plda
//
//  Created by 최유경 on 2023/07/15.
//

import SwiftUI

struct MainDiaryView: View {
    var body: some View {
        
        ScrollView(.vertical, showsIndicators: true){
            imageDiaryListView()
        }
        .background(PldaAsset.Images.background.swiftUIImage)
            .frame(maxWidth: .infinity, maxHeight: .infinity)
        ZStack{
            Button(action: {}) {
                VStack{
                    Spacer()
                    PldaAsset.Images.pencil.swiftUIImage
                        .frame(width: 42, height: 42)
                        .padding(.bottom,50)
                        .padding(.horizontal,40)
                }
            }
        }
    }
}

private func imageDiaryListView() -> some View {
    @State var title: [String] = ["제목1", "제목2", "제목3"]
    
    return VStack{
        ForEach(title,id:\.self) { index in //사진 없는 일기
            HStack{
                VStack{
                    HStack{
                        Text(index)
                            .font(.bold24)
                            .foregroundColor(.black)
                        Spacer()
                    }
                    HStack{
                        Text("태그 1 태그 2 태그 3")
                            .font(.medium12)
                            .foregroundColor(.gray80)
                        
                        Spacer()
                        
                        Text("20230706")
                            .font(.medium12)
                            .foregroundColor(.gray80)
                    }
                }
                .padding(EdgeInsets(top: 10, leading: 10, bottom: 10, trailing: 10))
                
            }
            .background(.white)
            .cornerRadius(6)
            .shadow(color: Color.darkGreen.opacity(0.3), radius: 10, x: 0, y: 4)
            .padding(EdgeInsets(top: 5, leading: 20, bottom:0, trailing: 20))
        }
        
        ForEach(title,id:\.self) { index in //사진 있는 일기
            HStack{
                VStack{
                    HStack{
                        PldaAsset.Images.diary.swiftUIImage
                            .aspectRatio(contentMode: .fill)
                            .frame(height:130)
                            .clipped()
                            .cornerRadius(4)
                            .padding(0)
                            .clipShape(Rectangle())
                    }
                    HStack{
                        Text(index)
                            .font(.bold24)
                            .foregroundColor(.black)
                        Spacer()
                    }
                    HStack{
                        Text("태그 1 태그 2 태그 3")
                            .font(.medium12)
                            .foregroundColor(.gray80)
                        
                        Spacer()
                        
                        Text("20230706")
                            .font(.medium12)
                            .foregroundColor(.gray80)
                    }
                }
                .padding(EdgeInsets(top: 10, leading: 10, bottom: 10, trailing: 10))
                
            }//큰 HStack
            .background(.white)
            .cornerRadius(6)
            .shadow(color: Color.darkGreen.opacity(0.3), radius: 10, x: 0, y: 4)
            .padding(EdgeInsets(top: 5, leading: 20, bottom:0, trailing: 20))

        } //사진 있는 Foreach문
        
    } //VStack
    .padding(.top,12)
    .padding(.bottom,30)
}
