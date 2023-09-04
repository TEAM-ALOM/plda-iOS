//
//  RecommendView.swift
//  Plda
//
//  Created by 최유경 on 2023/08/16.
//  Copyright © 2023 alom.com. All rights reserved.
//

import SwiftUI


struct RecommendView: View {
    @Environment(\.presentationMode) var presentationMode
    
    var body: some View {
        VStack{
            HStack(spacing: 0){
                PldaAsset.Images.leftVector.swiftUIImage
                    .padding(.trailing,7)
                
                Text("오늘의")
                    .font(PldaFontFamily.Pretendard.bold.swiftUIFont(size: 24))
                
                    .multilineTextAlignment(.center)
                    .foregroundColor(.black)
                
                Text(" 플다 pick")
                    .font(.bold24)
                    .multilineTextAlignment(.center)
                    .foregroundColor(.darkGreen)
                
                PldaAsset.Images.rightVector.swiftUIImage
                    .padding(.leading,7)
                
            }
            Text("Ice Cream Cake")
                .foregroundColor(.black)
                .font(.bold16)
                .padding(.top,45)
            
            Text("Red Velvet (레드벨벳)")
                .foregroundColor(.black)
                .font(.medium12)
            

            PldaAsset.Images.song.swiftUIImage
                .padding(.horizontal,20)
                .padding(.top,20)
            
            PldaAsset.Images.heartGray.swiftUIImage
                .padding(.top,14)
            
            HStack{
                Text("playlist 확인하러 가기")
                    .font(.medium12)
                    .multilineTextAlignment(.center)
                    .foregroundColor(.black)
                    .padding(.horizontal,25)
                    .padding(.vertical,10)
            }
            .overlay(
                RoundedRectangle(cornerRadius: 7)
                    .stroke(Color.lightGreen, lineWidth: 2)
            )
            .padding(.top,10)
            
            HStack{
                PldaAsset.Images.good.swiftUIImage
                    .padding(.leading,40)
                Spacer()
                PldaAsset.Images.play.swiftUIImage
                Spacer()
                PldaAsset.Images.bad.swiftUIImage
                    .padding(.trailing,40)
                
            }.padding(.top,100)
            
        }
        .background(PldaAsset.Images.background.swiftUIImage)
            .frame(maxWidth: .infinity, maxHeight: .infinity)
        .navigationBarBackButtonHidden(true)
        .navigationBarTitleDisplayMode(.inline)
        .toolbar {
            ToolbarItem(placement: .principal) {
                HStack(){
                    Button(action: {
                        presentationMode.wrappedValue.dismiss()
                    }, label: {
                        PldaAsset.Images.home.swiftUIImage
                    })
                    Spacer()
                }
            }
        }
    }
}

struct RecommendView_Previews: PreviewProvider {
    static var previews: some View {
        RecommendView()
    }
}
