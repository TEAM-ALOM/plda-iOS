//
//  WritngView.swift
//  Plda
//
//  Created by 김채빈 on 2023/07/20.
//

import SwiftUI
import PhotosUI

struct WritngView: View {
    @State var title : String = ""
    @State var tag : String = ""
    @State var content : String = ""
    @State var isNew: Bool = true
    @State private var selectedItem: PhotosPickerItem? = nil
    @State private var selectedImageData: Data? = nil
    
    var body: some View {
            VStack{
                WritingNavgionBar()
                
                TextField("제목", text: $title)
                    .padding(.horizontal, 30)
                    .font(.bold24)
                HStack{
                    TextField("#태그", text: $tag)
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
                
                if let selectedImageData,
                   let uiImage = UIImage(data: selectedImageData) {
                    Image(uiImage: uiImage)
                        .resizable()
                        .frame(minWidth: 0, maxWidth: 326)
                        .frame(width: 326.0, height: 342.0)
                        .cornerRadius(5)
                }
                
                TextEditor(text: $content)
                    .padding(.horizontal, 30)
                    .scrollContentBackground(.hidden)
                    .font(.custom("Pretendard-Medium", size: 12))
                    .font(.medium12)
                    .toolbar{
                        ToolbarItem(placement: .keyboard) {
                            PhotosPicker(
                                    selection: $selectedItem,
                                    matching: .images,
                                    photoLibrary: .shared()) {
                                        Button(action: {

                                        }) {
                                            Image("AddImage")
                                        }
                                    }
                                    .onChange(of: selectedItem) { newItem in
                                                    Task {
                                                        if let data = try? await newItem?.loadTransferable(type: Data.self) {
                                                            selectedImageData = data
                                                        }
                                                    }
                                                }
                        }
                    }
                Spacer()
                if isNew {
                    Button("노래 들을 준비 완료!"){}
                        .buttonStyle(roundedRectangleBorder())
                        .padding(.bottom, 13)
                    Button("조금 더 작성할래요."){}
                        .buttonStyle(roundedRectangleBorder(backgroundColor: .gray10, foregroundColor: .black))
                        .padding(.bottom, 100)
                }
                else {
                    Button("일기 수정하기"){}
                        .buttonStyle(roundedRectangleBorder())
                        .padding(.bottom, 13)
                    Button("노래 추천 다시 받기"){}
                        .buttonStyle(roundedRectangleBorder(backgroundColor: .lightGreen))
                        .padding(.bottom, 100)
                }
                
            }
            .background(
                PldaAsset.PreviewAssets.background.swiftUIImage
                    .frame(width: .infinity, height: .infinity)
                    .ignoresSafeArea())
        }
    
}

struct WritingNavgionBar: View{
    @State var showingExitAlert: Bool = false
    @State var showingSaveAlert: Bool = false
    @State var diaryCnt: Int = 1

    var body: some View {
        HStack{
            Button(action: {
                showingExitAlert = true
            }, label: {
                PldaAsset.PreviewAssets.preButton.swiftUIImage
            })
            .padding(.leading, 20)
            .alert(isPresented: $showingExitAlert) {
                Alert(
                    title: Text("잠깐! 지금 나가면 일기가 저장되지 않아요."),
                    message: Text("그래도 나갈까요?"),
                    primaryButton: .destructive(Text("네, 나갈게요.")), secondaryButton: .cancel(Text("아니요, 더 작성할래요.")))
            }
            
            Spacer()
            
            Button(action: {
//                showingSaveAlert = true
            }, label: {
                PldaAsset.PreviewAssets.playListIcon.swiftUIImage
            })
            .padding(.trailing, 20)
//            .alert(isPresented: $showingSaveAlert) {
//                Alert(
//                    title: Text("노래 추천을 다시 할까요?"),
//                    message: Text("노래 추천은 하루 3회 가능해요.(\(diaryCnt)/3)"),
//                    primaryButton: .destructive(Text("네, 다시 추천 받을래요.")), secondaryButton: .cancel(Text("아니요, 잘못 눌렀어요.")))
//            }
        }
        .padding(.bottom, 13)
        .padding(.top, 15)
    }
}

struct WritngView_Previews: PreviewProvider {
    static var previews: some View {
        WritngView()
    }
}
