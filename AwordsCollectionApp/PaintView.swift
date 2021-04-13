//
//  PaintView.swift
//  AwordsCollectionApp
//
//  Created by Лидия Ладанюк on 12.04.2021.
//  Copyright © 2021 Alexey Efimov. All rights reserved.
//

import SwiftUI

struct PaintView: View {
    
    let width: CGFloat
    let height: CGFloat
    
    var body: some View {
        GeometryReader { geometry in
            let size = min(geometry.size.width, geometry.size.height)
            let middle = size / 3
            
            ZStack {
                Circle()
                    .fill(Color.blue)
                    .transformEffect(
                        CGAffineTransform(translationX: 0, y: -middle)
                    )
                Circle()
                    .fill(Color.red)
                    .transformEffect(
                        CGAffineTransform(translationX: middle, y: 0)
                    )
                Circle()
                    .fill(Color.yellow)
                    .transformEffect(
                        CGAffineTransform(translationX: 0, y: middle)
                    )
                Circle()
                    .fill(Color.green)
                    .transformEffect(
                        CGAffineTransform(translationX: -middle, y: 0)
                    )
                
                Image(systemName: "book.fill")
                    .resizable()
                    .frame(height: height / 1.5)
                    .foregroundColor(.white)
                
                Image(systemName: "pencil.and.outline")
                    .resizable()
                    .frame(width: width / 3, height: height / 3)
                    .foregroundColor(.black)
                    .offset(x: -geometry.size.width / 4)
            }
            .opacity(0.8)
            .scaleEffect(0.6)
        }
        .frame(width: width, height: height)
    }
}

struct PaintView_Previews: PreviewProvider {
    static var previews: some View {
        PaintView(width: 250, height: 250)
    }
}
