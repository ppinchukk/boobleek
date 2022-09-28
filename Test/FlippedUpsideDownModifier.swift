//
//  FlippedUpsideDownModifier.swift
//  Test
//
//  Created by Oleksandra Pinchuk on 28.09.2022.
//

import SwiftUI

struct FlippedUpsideDown: ViewModifier {
   func body(content: Content) -> some View {
    content
           .rotationEffect(.radians(.pi))
      .scaleEffect(x: -1, y: 1, anchor: .center)
   }
}
extension View{
   func flippedUpsideDown() -> some View{
     self.modifier(FlippedUpsideDown())
   }
}
