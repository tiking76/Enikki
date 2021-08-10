//
//  Pencil.swift
//  Enikki
//
//  Created by tiking on 2021/08/10.
//

import SwiftUI
import PencilKit

struct SketchView {
    @Binding var canvasView: PKCanvasView
}

extension SketchView: UIViewRepresentable {
    
    typealias UIViewType = PKCanvasView

    func makeUIView(context: Context) -> PKCanvasView {
        canvasView.drawingPolicy = .anyInput
        canvasView.tool = PKInkingTool(.pen, color: .black, width: 4.0)
        return canvasView
    }
    
    func updateUIView(_ uiView: PKCanvasView, context: Context) {}
}
