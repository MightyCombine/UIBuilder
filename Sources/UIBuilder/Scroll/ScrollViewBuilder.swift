//
//  UIBuilder+UIScrollView.swift
//
//
//  Created by 김인섭 on 11/3/23.
//

import UIKit

public class ScrollViewBuilder<T: UIScrollView>: UIBuilder<T> {
    
    public func setShowsVerticalScrollIndicator(_ show: Bool) -> Self {
        view.showsVerticalScrollIndicator = show
        return self
    }
    
    public func setShowsHorizontalScrollIndicator(_ show: Bool) -> Self {
        view.showsHorizontalScrollIndicator = show
        return self
    }
    
    public func setAlwaysBounceVertical(_ state: Bool) -> Self {
        view.alwaysBounceVertical = state
        return self
    }
    
    public func setAlwaysBounceHorizontal(_ state: Bool) -> Self {
        view.alwaysBounceHorizontal = state
        return self
    }
    
    public func setRefreshControl(_ refresh: UIRefreshControl) -> Self {
        view.refreshControl = refresh
        return self
    }
    
    public func setKeyboardDismissMode(_ mode: UIScrollView.KeyboardDismissMode) -> Self {
        view.keyboardDismissMode = mode
        return self
    }
}
