//
//  ContentView.swift
//  Shared
//
//  Created by 鄭家騰 on 2021/7/12.
//

import SwiftUI

struct ContentView: View {
    @State var show = false
    var body: some View {
     
        NavigationView{
            ZStack {
                ScrollView(.vertical, showsIndicators: false) {
                        VStack(spacing:15){
                            ForEach(1...7,id: \.self){i in
                                Image("p\(i)").resizable().frame(height:250).cornerRadius(15)
                                }
                            }
                        .padding()
                    }
                GeometryReader {_ in
                    HStack {
                        
                        Menu().offset(x: self.show ? 0 :  -UIScreen.main.bounds.width)
                            .animation(.default)
                        
                        Spacer()
                    }
                }.background(Color.black.opacity(self.show ? 0.5 : 0).edgesIgnoringSafeArea(.bottom))
                
            }.navigationBarTitle("Home",displayMode: .inline)
            .navigationBarItems(leading:
                        Button(action: {
                                        
                            self.show.toggle()
                                         
                            }, label: {
                            if self.show{
                                Image(systemName: "arrow.left")
                                .font(.body)
                                .foregroundColor(.black)
                            }else {
                                Image("menu").renderingMode(.original)
                            }
                    })
            )
        }
    }
}
        struct ContentView_Previews: PreviewProvider {
            static var previews: some View {
                ContentView()
            }
        }

struct Menu: View {
    var body: some View {
        VStack(spacing: 25){
            Button(action: {
                
            }){
                VStack(spacing: 8){
                    Image("talk")
                        .renderingMode(.original)
                        .resizable()
                        .frame(width: 55, height: 55)
                    Text("Chat")
                }
            }
            Button(action: {
                
            }){
                VStack(spacing: 8){
                    Image("camera")
                        .renderingMode(.original)
                        .resizable()
                        .frame(width: 55, height: 55)
                    Text("Camera")
                }
            }
            Button(action: {
                
            }){
                VStack(spacing: 8){
                    Image("heart")
                        .renderingMode(.original)
                        .resizable()
                        .frame(width: 55, height: 55)
                    Text("Heart")
                }
            }
            Button(action: {
                
            }){
                VStack(spacing: 8){
                    Image("backup")
                        .renderingMode(.original)
                        .resizable()
                        .frame(width: 55, height: 55)
                    Text("BackUp")
                }
            }
            Spacer(minLength: 15)
        }.padding(35)
        .foregroundColor(.black)
        .background(Color("Color").edgesIgnoringSafeArea(.bottom))
    }
}
