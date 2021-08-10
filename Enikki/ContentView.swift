//
//  ContentView.swift
//  Enikki
//
//  Created by tiking on 2021/08/10.
//

import SwiftUI
import PencilKit

struct ContentView: View {
    @State private var canvasView = PKCanvasView()
    @State var text: String = ""
    @State var flag: Bool  = true
    var body: some View {
        VStack {
            ZStack {
                SketchView(canvasView: $canvasView)
                    .frame(maxWidth: .infinity, minHeight: 10, maxHeight: 350,  alignment: .center)
                    .padding(Padding.S)
                    .border(Color.imageBorder, width: 10)
                    .padding(.horizontal, Padding.XL)
                if flag {
                    Text("ここにきょうの\nできごとをえにかいてみよう！")
                        .multilineTextAlignment(.center)
                        .font(.h1)
                        .foregroundColor(Color.imageBorder)
                        .padding(.horizontal, Padding.L)
                }
                HStack {
                    Spacer()
                    VStack {
                        Spacer()
                        Button(action: {
                            canvasView.drawing = PKDrawing()
                        }){
                            Image(systemName: "trash.fill")
                                    .foregroundColor(Color(.lightGray))
                                    .frame(width: 40, height: 40)
                                .padding(.horizontal, Padding.XXL)
                                .padding(.vertical, Padding.M)
                        }
                    }
                }
            }
            .onTapGesture {
                flag = false
            }
            // Todo: 日付可変に変える
            Text("8/10")
                .font(.h1)
                .padding(.vertical, Padding.XS)
            ZStack {
                TextEditor(text: $text)
                    .frame(maxWidth: .infinity)
                    .padding(Padding.S)
                    .border(Color.imageBorder, width: 10)
                    .padding(.horizontal, Padding.XL)
                    .onTapGesture {
                        UIApplication.shared.closeKeyboard()
                    }
                if text.isEmpty {
                    Text("ここにきょうの\nできごとをかいてね！")
                        .multilineTextAlignment(.center)
                        .font(.h1)
                        .foregroundColor(Color.imageBorder)
                        .padding(.horizontal, Padding.L)
                }
            }
        }
    }
}

extension UIApplication {
    func closeKeyboard() {
        sendAction(#selector(UIResponder.resignFirstResponder), to: nil, from: nil, for: nil)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
