//
//  SwiftUIView.swift
//  Plda
//
//  Created by 김채빈 on 2023/08/17.
//  Copyright © 2023 alom.com. All rights reserved.
//

import SwiftUI

struct RecommendSheetView: View {
    @Binding var albumCover: String
    @Binding var albumTitle: String
    @Binding var albumSubTitle: String
    
    var body: some View {
        ZStack{
            RoundedRectangle(cornerRadius: 40)
                .fill(Color.darkGreen)
                .ignoresSafeArea()
                .offset(y:56)
            
            RoundedRectangle(cornerRadius: 40)
                .fill(.white)
                .ignoresSafeArea()
                .offset(y:110)
            
            VStack {
                Image(albumCover)
                    .frame(width:208, height:208)
                    .cornerRadius(4)
                    .padding(.bottom, 10)
                HStack {
                    Button(action: {
                        
                    }, label: {
                        PldaAsset.PreviewAssets.likeIcon.swiftUIImage
                    })
                    
                    VStack {
                        Text(albumTitle)
                            .font(.semiBold)
                        Text(albumSubTitle)
                            .font(.medium12)
                    }
                    .padding(.horizontal, 21)
                    
                    Button(action: {
                        
                    }, label: {
                        PldaAsset.PreviewAssets.dislikeIcon.swiftUIImage
                    })
                }
                
                Button(action: {
                    
                }, label: {
                    PldaAsset.PreviewAssets.linkIcon.swiftUIImage
                })
                .padding(.top, 19)
                
                Button("playlist 확인하러 가기") {}
                    .padding(.top, 19)
                    .buttonStyle(roundedRectangleBorder())
            }
            .offset(y:-22)
        }
    }
}

struct roundedRectangleBorder: ButtonStyle {
    func makeBody(configuration: Configuration) -> some View {
        configuration.label
            .padding()
            .foregroundColor(.black)
            .background()
                .cornerRadius(10)
                .overlay(
                    RoundedRectangle(cornerRadius: 6)
                        .stroke(Color.lightGreen, lineWidth: 1.5))
                .frame(width: 162, height: 32)
                .font(.medium12)}
}

struct DiaryDetailView: View {
    @State var title : String = ""
    @State var tag : String = ""
    @State var content : String = ""
    @State var diaryimage: UIImage? = nil
    @State var showsheet : Bool = true
    @State var albumCover: String
    @State var albumTitle: String
    @State var albumSubTitle: String

    var body: some View {
            VStack() {
                WritingNavgionBar()

                HStack{
                    Text(title)
                        .padding(.horizontal, 32)
                        .font(.bold24)
                    Spacer()
                }
                HStack{
                    Text(tag)
                        .padding(.leading, 30)
                        .font(.medium12)
                    Spacer()
                    Text("20230727")
                        .font(.medium12)
                        .padding(.trailing, 30)
                }
                .font(.medium12)
                .opacity(0.8)
                Divider()
                    .frame(height: 1)
                    .background(.black)
                    .padding(.horizontal, 20)
                if let image = diaryimage {
                    Image(uiImage: image)
                        .resizable()
                        .frame(minWidth: 0, maxWidth: 326)
                        .frame(width: 326.0, height: 342.0)
                        .cornerRadius(5)
                }
                Text(content)
                    .padding(.horizontal, 30)
                    .scrollContentBackground(.hidden)
                    .font(.medium12)
                Spacer()
                Button("일기 수정하기"){}
                    .buttonStyle(roundedRectangle())
                    .padding(.bottom, 13)
                Button("노래 추천 다시 받기"){}
                    .buttonStyle(roundedRectangle(backgroundColor: .lightGreen))
                    .padding(.bottom, 100)
            }
            .background(PldaAsset.PreviewAssets.background.swiftUIImage
                .frame(width: .infinity, height: .infinity)
                .ignoresSafeArea()
            )
        
        
        
            .sheet(isPresented: $showsheet) {
                RecommendSheetView(albumCover: $albumCover, albumTitle: $albumTitle, albumSubTitle: $albumSubTitle)
                    .presentationDetents([.medium])
                    .presentationBackground(.clear)
            }
    }
}

struct DiaryDetailView_Previews: PreviewProvider {
    static var previews: some View {
        DiaryDetailView(title: "쌀국수", tag: "#dkjflsf", content: "동네에 쌀국수 맛집을 찾았다. 좀 더 많은 메뉴가 있었으면 더 좋았을 거 같다. 그래도 너무너무 맛있어서 행복했다. 양도 많고 재료도 풍부하고 아주 굿. 다음 번엔 매운 차돌박이 쌀국수를 먹어봐야겠다. 맛있는 하루를 보내 기분이 좋았으나 저녁 때 사건이 발생했다. \n(어쩌고 저쩌고) \n어떻게 해야 좋은 대처였을지 잘 모르겠다. 내일 다시 생각해 봐야겠다.", diaryimage: UIImage(named: PldaAsset.PreviewAssets.image2.name), albumCover: PldaAsset.PreviewAssets.image3.name, albumTitle: "Ice Cream Cake", albumSubTitle: "Red Velvet (레드벨벳)")
    }
}
