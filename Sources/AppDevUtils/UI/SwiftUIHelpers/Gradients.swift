import DynamicColor
import SwiftUI

public extension LinearGradient {
  static func easedGradient(
    colors: [Color],
    steps: UInt = 8,
    startPoint: UnitPoint = UnitPoint(x: 0.5, y: 0),
    endPoint: UnitPoint = UnitPoint(x: 0.5, y: 1)
  ) -> Self {
    let palette = colors
      .map { DynamicColor($0) }
      .gradient
      .colorPalette(amount: steps, inColorSpace: .lab)

    return LinearGradient(
      colors: palette.map { Color($0) },
      startPoint: startPoint,
      endPoint: endPoint
    )
  }
}
