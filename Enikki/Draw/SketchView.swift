//
//  SketchView.swift
//  Enikki
//
//  Created by tiking on 2021/08/10.
//

import SwiftUI
import PencilKit

struct SketchView: View {
    @State private var canvasView = PKCanvasView()
    var body: some View {
        NewPaint(canvasView: $canvasView)
    }
}
