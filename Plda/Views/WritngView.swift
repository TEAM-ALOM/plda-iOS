//
//  WritngView.swift
//  Plda
//
//  Created by 김채빈 on 2023/07/20.
//

import SwiftUI

struct WritngView: View {
    @State var title : String = ""
    @State var tag : String = ""
    @State var content : String = ""
    @State var image = UIImage()
    @State private var openPhoto = false
    
    var body: some View {
        ZStack{
            Image("background")
                .resizable()
                .ignoresSafeArea()
            VStack{
                WritingNavgionBar()
                TextField("제목", text: $title)
                    .padding(.horizontal, 30)
                    .font(.system(size: 24))
                HStack{
                    TextField("#태그", text: $tag)
                        .padding(.leading, 30)
                        .font(.custom("Pretendard-Medium", size: 12))
                    Spacer()
                    Text("20230727")
                        .font(.custom("Pretendard-Medium", size: 12))
                        .padding(.trailing, 30)
                }
                .font(.system(size: 12))
                .opacity(0.8)
                Divider()
                    .frame(height: 1)
                    .background(.black)
                    .padding(.horizontal, 20)
                Image(uiImage: self.image)
                        .resizable()
                        .frame(minWidth: 0, maxWidth: 326)
                        .frame(width: 326.0, height: 342.0)
                        .cornerRadius(5)
                TextEditor(text: $content)
                    .padding(.horizontal, 30)
                    .scrollContentBackground(.hidden)
                    .font(.custom("Pretendard-Medium", size: 12))
                    .toolbar{
                        ToolbarItem(placement: .keyboard) {
                            Button(action: {
                                self.openPhoto = true
                            }) {
                                Image("AddImage")
                            }
                            .sheet(isPresented: $openPhoto) {
                                ImagePicker(sourceType: .photoLibrary, selectedImage: self.$image)
                            }
                        }
                    }
                Spacer()
            }
        }
    }
}

struct WritingNavgionBar: View{
    @State var showingAlert: Bool = false

    var body: some View {
        HStack{
            Button(action: {
                showingAlert = true
            }, label: {
                Image("preBtn")
            })
            .padding(.leading, 20)
            .alert(isPresented: $showingAlert) {
                Alert(
                    title: Text("잠깐! 지금 나가면 일기가 저장되지 않아요."),
                    message: Text("그래도 나갈까요?"),
                    primaryButton: .destructive(Text("네, 나갈게요.")), secondaryButton: .cancel(Text("아니요, 더 작성할래요.")))
            }
            
            Spacer()
            
            Button(action: {
                
            }, label: {
                Image("PlaylistIcon")
            })
            .padding(.trailing, 20)
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
