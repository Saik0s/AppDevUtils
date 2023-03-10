import SwiftUI

public extension View {
  func previewSupportedLocales() -> some View {
    LocalePreview { self }
  }

  func previewDarkTheme() -> some View {
    DarkThemePreview { self }
  }

  func previewRightToLeft() -> some View {
    RightToLeftPreview { self }
  }

  func previewContentSize(_ sizeCategory: ContentSizeCategory) -> some View {
    ContentSizeCategoryPreview(sizeCategory) { self }
  }
}

public extension View {
  func previewPreset() -> some View {
    let content = padding()

    return Group {
      content.previewSupportedLocales()
      content.previewRightToLeft()
      content.previewDarkTheme()
      content.previewContentSize(.extraSmall)
      content.previewContentSize(.medium)
      content.previewContentSize(.extraExtraExtraLarge)
    }
  }
}
