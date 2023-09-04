//
//  SettingView.swift
//  Plda
//
//  Created by 최유경 on 2023/08/09.
//

import SwiftUI

struct SettingView: View {
    var body: some View {
        NavigationView {
            VStack{
                PldaAsset.Images.vector9.swiftUIImage
                    .padding(.top,0)
                    .padding(.horizontal,20)
                
                Spacer()
                PldaAsset.Images.profile.swiftUIImage
                    .padding(.horizontal,40)
                    .padding(.bottom,12)
                
                HStack(spacing : 0){
                    Spacer()
                    Text("닉네임")
                        .font(.bold16)
                        .foregroundColor(.black)
                        .multilineTextAlignment(.center)
                    
                    NavigationLink(destination: EditsettingView()) {
                        PldaAsset.Images.rightArrow.swiftUIImage
                    }
                    Spacer()
                }
                Spacer()
                
                PldaAsset.Images.vector9.swiftUIImage
                    .padding(.top,0)
                    .padding(.horizontal,20)
                HStack{
                    Text("약관 및 이용 동의")
                        .font(.bold16)
                        .foregroundColor(.gray80)
                    Spacer()
                    NavigationLink(destination: TermsView()) {
                        PldaAsset.Images.rightArrow.swiftUIImage
                    }
                }.padding(.horizontal,25)
                HStack{
                    Text("개인정보 취급 방침")
                        .font(.bold16)
                        .foregroundColor(.gray80)
                    Spacer()
                    NavigationLink(destination: PrivacyView()) {
                        PldaAsset.Images.rightArrow.swiftUIImage
                    }
                }.padding(.horizontal,25)
                
                PldaAsset.Images.vector9.swiftUIImage
                    .padding(.top,0)
                    .padding(.horizontal,20)
                Spacer()
            }
            .navigationBarTitleDisplayMode(.inline)
            .toolbar {
                ToolbarItem(placement: .principal) {
                    Text("MY")
                        .font(.bold16)
                        .foregroundColor(.darkGreen)
                        .accessibilityAddTraits(.isHeader)
                }
            }
            .navigationBarItems(
                leading:
                    Button(action: {}) {
                        PldaAsset.Images.leftArrow.swiftUIImage
                            .frame(width: 20, height: 18)
                    }
            )
            .background(PldaAsset.Images.background.swiftUIImage)
                .frame(maxWidth: .infinity, maxHeight: .infinity)
        }
    }
    
}

