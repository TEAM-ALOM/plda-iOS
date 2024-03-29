//
//  MainPlayView.swift
//  Plda
//
//  Created by 최유경 on 2023/08/01.
//

import SwiftUI

struct MainPlayView: View {
    var body: some View {
        ScrollView(.vertical, showsIndicators: true){
            playListView()
        }
        .background(PldaAsset.Images.background.swiftUIImage)
            .frame(maxWidth: .infinity, maxHeight: .infinity)
    }
}

private func playListView() -> some View {
    @State var title: [String] = ["Ice Cream Cake", "Butter", "콩떡빙수"]
    
    return VStack{
        ForEach(title,id:\.self) { index in
            HStack{
                Spacer()
                HStack(spacing: 15){
                    VStack{
                        PldaAsset.Images.song.swiftUIImage
                            .resizable()
                            .frame(height: 150)
                            .clipped()
                            .cornerRadius(5)
                        HStack{
                            Text(index)
                                .font(.bold16)
                                .foregroundColor(.black)
                            Spacer()
                        }
                        HStack{
                            Text("가수")
                                .font(.medium12)
                                .foregroundColor(.gray80)
                            Spacer()
                        }
                    }
                    .padding(EdgeInsets(top: 10, leading: 10, bottom: 10, trailing: 10))
                    .background(.white)
                    .cornerRadius(5)
                    
                    VStack{
                        PldaAsset.Images.song.swiftUIImage
                            .resizable()
                            .frame(height: 150)
                            .clipped()
                            .cornerRadius(5)
                        HStack{
                            Text(index)
                                .font(.bold16)
                                .foregroundColor(.black)
                            Spacer()
                        }
                        HStack{
                            Text("가수")
                                .font(.medium12)
                                .foregroundColor(.gray80)
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

