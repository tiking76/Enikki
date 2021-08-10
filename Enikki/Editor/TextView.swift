//
//  TextView.swift
//  Enikki
//
//  Created by tiking on 2021/08/10.
//

import UIKit
import CoreText

final class TextView: UIView {
    public var text: String? = nil {
        didSet {
            ctFrame = nil
        }
    }
    private var ctFrame: CTFrame? = nil

    override public func draw(_ rect: CGRect) {
        guard let context:CGContext = UIGraphicsGetCurrentContext() else {
            return
        }
        context.scaleBy(x: 1, y: -1)
        context.translateBy(x: 0, y: -rect.height)

        let baseAttributes: [NSAttributedString.Key : Any] = [
            .verticalGlyphForm: true
        ]
        let attributedText = NSMutableAttributedString(string: text ?? "", attributes: baseAttributes)
        let setter = CTFramesetterCreateWithAttributedString(attributedText)
        let path = CGPath(rect: rect, transform: nil)
        let frameAttrs = [
            kCTFrameProgressionAttributeName: CTFrameProgression.rightToLeft.rawValue,
        ]
        let ct = CTFramesetterCreateFrame(setter, CFRangeMake(0, 0), path, frameAttrs as CFDictionary)
        ctFrame = ct

        CTFrameDraw(ct, context)
    }
}
