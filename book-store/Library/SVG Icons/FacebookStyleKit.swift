//
//  FacebookStyleKit.swift
//  ProjectName
//
//  Created by AuthorName on 07.02.2020.
//  Copyright © 2020 CompanyName. All rights reserved.
//
//  Generated by PaintCode
//  http://www.paintcodeapp.com
//



import UIKit

public class FacebookStyleKit : NSObject {

    //// Drawing Methods

    @objc dynamic public class func drawFacebook_svg(frame targetFrame: CGRect = CGRect(x: 0, y: 0, width: 50, height: 50), resizing: ResizingBehavior = .aspectFit) {
        //// General Declarations
        let context = UIGraphicsGetCurrentContext()!
        
        //// Resize to Target Frame
        context.saveGState()
        let resizedFrame: CGRect = resizing.apply(rect: CGRect(x: 0, y: 0, width: 50, height: 50), target: targetFrame)
        context.translateBy(x: resizedFrame.minX, y: resizedFrame.minY)
        context.scaleBy(x: resizedFrame.width / 50, y: resizedFrame.height / 50)


        //// Color Declarations
        let fillColor = UIColor(red: 0.259, green: 0.404, blue: 0.698, alpha: 1.000)
        let fillColor2 = UIColor(red: 1.000, green: 1.000, blue: 1.000, alpha: 1.000)

        //// facebook.svg Group
        //// Rectangle Drawing
        let rectanglePath = UIBezierPath(roundedRect: CGRect(x: 0, y: 0, width: 50, height: 50), cornerRadius: 20)
        fillColor.setFill()
        rectanglePath.fill()


        //// Bezier Drawing
        let bezierPath = UIBezierPath()
        bezierPath.move(to: CGPoint(x: 31, y: 21.56))
        bezierPath.addLine(to: CGPoint(x: 25.88, y: 21.56))
        bezierPath.addLine(to: CGPoint(x: 25.88, y: 18.81))
        bezierPath.addCurve(to: CGPoint(x: 27.25, y: 17.44), controlPoint1: CGPoint(x: 25.88, y: 18.05), controlPoint2: CGPoint(x: 26.49, y: 17.44))
        bezierPath.addLine(to: CGPoint(x: 28.62, y: 17.44))
        bezierPath.addLine(to: CGPoint(x: 28.62, y: 14))
        bezierPath.addLine(to: CGPoint(x: 25.88, y: 14))
        bezierPath.addCurve(to: CGPoint(x: 21.75, y: 18.12), controlPoint1: CGPoint(x: 23.6, y: 14), controlPoint2: CGPoint(x: 21.75, y: 15.85))
        bezierPath.addLine(to: CGPoint(x: 21.75, y: 21.56))
        bezierPath.addLine(to: CGPoint(x: 19, y: 21.56))
        bezierPath.addLine(to: CGPoint(x: 19, y: 25))
        bezierPath.addLine(to: CGPoint(x: 21.75, y: 25))
        bezierPath.addLine(to: CGPoint(x: 21.75, y: 36))
        bezierPath.addLine(to: CGPoint(x: 25.88, y: 36))
        bezierPath.addLine(to: CGPoint(x: 25.88, y: 25))
        bezierPath.addLine(to: CGPoint(x: 29.62, y: 25))
        bezierPath.addLine(to: CGPoint(x: 31, y: 21.56))
        bezierPath.close()
        fillColor2.setFill()
        bezierPath.fill()
        
        context.restoreGState()

    }




    @objc(FacebookStyleKitResizingBehavior)
    public enum ResizingBehavior: Int {
        case aspectFit /// The content is proportionally resized to fit into the target rectangle.
        case aspectFill /// The content is proportionally resized to completely fill the target rectangle.
        case stretch /// The content is stretched to match the entire target rectangle.
        case center /// The content is centered in the target rectangle, but it is NOT resized.

        public func apply(rect: CGRect, target: CGRect) -> CGRect {
            if rect == target || target == CGRect.zero {
                return rect
            }

            var scales = CGSize.zero
            scales.width = abs(target.width / rect.width)
            scales.height = abs(target.height / rect.height)

            switch self {
                case .aspectFit:
                    scales.width = min(scales.width, scales.height)
                    scales.height = scales.width
                case .aspectFill:
                    scales.width = max(scales.width, scales.height)
                    scales.height = scales.width
                case .stretch:
                    break
                case .center:
                    scales.width = 1
                    scales.height = 1
            }

            var result = rect.standardized
            result.size.width *= scales.width
            result.size.height *= scales.height
            result.origin.x = target.minX + (target.width - result.width) / 2
            result.origin.y = target.minY + (target.height - result.height) / 2
            return result
        }
    }
}