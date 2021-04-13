//
//  AppleView.swift
//  AwordsCollectionApp
//
//  Created by Лидия Ладанюк on 13.04.2021.
//  Copyright © 2021 Alexey Efimov. All rights reserved.
//

import SwiftUI

struct AppleView: View {
    
    let width: CGFloat
    let height: CGFloat
    
    var body: some View {
        GeometryReader { geometry in
            let size = min(geometry.size.width, geometry.size.width)
            let firstLine = size * 0.2
            let secondLine = size * 0.3
            let thirdLine = size * 0.65
            let fourthLine = size * 0.8
            let farLine = size * 0.9
            let middle = size / 2
            
            ZStack {
                Path { path in
                    path.move(to: CGPoint(x: middle, y: firstLine))
                    path.addQuadCurve(
                        to: CGPoint(x: farLine, y: secondLine),
                        control: CGPoint(x: fourthLine, y: firstLine / 4)
                    )
                    path.addQuadCurve(
                        to: CGPoint(x: farLine, y: thirdLine),
                        control: CGPoint(x: thirdLine, y: middle)
                    )
                    path.addQuadCurve(
                        to: CGPoint(x: middle, y: farLine),
                        control: CGPoint(x: fourthLine, y: size)
                    )
                    path.addQuadCurve(
                        to: CGPoint(x: firstLine / 4, y: middle),
                        control: CGPoint(x: fourthLine - thirdLine, y: size)
                    )
                    path.addQuadCurve(
                        to: CGPoint(x: middle, y: firstLine),
                        control: CGPoint(x: 0, y: 0)
                    )
                }
                .fill(
                    LinearGradient(gradient: Gradient(
                                    colors: [Color.white, Color.black]),
                                   startPoint: UnitPoint(x: 0, y: 0),
                                   endPoint: UnitPoint(x: 1, y: 0.5)
                    )
                )
                
                Path { path in
                    path.move(to: CGPoint(x: thirdLine, y: 0))
                    path.addQuadCurve(
                        to: CGPoint(x: middle, y: fourthLine - thirdLine),
                        control: CGPoint(x: thirdLine, y: size * 0.09)
                    )
                    path.addQuadCurve(
                        to: CGPoint(x: thirdLine, y: 0),
                        control: CGPoint(x: middle, y: size / 50)
                    )
                }
                .fill(
                    LinearGradient(gradient: Gradient(
                                    colors: [Color.white, Color.black]),
                                   startPoint: UnitPoint(x: 0, y: 0),
                                   endPoint: UnitPoint(x: 1, y: 0.5)
                    )
                )
            }
        }
        .frame(width: width, height: height)
    }
}

struct AppleUIView_Previews: PreviewProvider {
    static var previews: some View {
        AppleView(width: 250, height: 250)
    }
}
