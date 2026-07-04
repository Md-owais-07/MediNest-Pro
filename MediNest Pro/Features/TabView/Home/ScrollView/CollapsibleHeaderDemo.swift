//
//  CollapsibleHeaderDemo.swift
//  MediNest Pro
//
//  Created by Owais on 6/22/26.
//

import SwiftUI

// MARK: Dependencies
@available(iOS 18.0, *)
fileprivate extension ScrollGeometry {
    var offsetY: CGFloat {
        contentOffset.y + contentInsets.top
    }
}

enum HeaderState: Int {
    case expanded
    case collapsed
}

@available(iOS 17.0, *)
fileprivate struct SnapHeaderScrollBehavior: ScrollTargetBehavior {
    var collapseOffsetY: CGFloat = 0
    var height: CGFloat
    var threshold: CGFloat = 0.3

    func updateTarget(_ target: inout ScrollTarget, context: TargetContext) {
        let progress = target.rect.minY / height
        if target.rect.minY <= height - collapseOffsetY {
            if progress < threshold {
                target.rect.origin = .zero // snap to expand
            } else {
                target.rect.origin.y = height - collapseOffsetY // snap to collapse
            }
        }
    }
}

// MARK: CollpasableHaader
@available(iOS 17.0, *)
struct CollapsableHeader<HeaderView: View, ScrollView: View>: View {
    let expandedHeaderHeight: CGFloat
    let collapsedHeaderHeight: CGFloat
    let headerView: (() -> HeaderView)
    let scrollView: (() -> ScrollView)
    let offset: CGFloat
    @Binding var headerState: HeaderState
    
    //    private var currentHeaderHeight: CGFloat { // Follow scroll offset
    //        return min(max(expandedHeaderHeight - offset, collapsedHeaderHeight), expandedHeaderHeight)
    //    }
    
    private var currentHeaderHeight: CGFloat { // scroll with parallax
        let progress = min(max(offset / expandedHeaderHeight, 0), 1)
        return expandedHeaderHeight - (expandedHeaderHeight - collapsedHeaderHeight) * progress
    }
    
    init(expandedHeaderHeight: CGFloat,
         collapsedHeaderHeight: CGFloat,
         offset: CGFloat,
         headerState: Binding<HeaderState>,
         headerView: @escaping () -> HeaderView,
         scrollView: @escaping () -> ScrollView) {
        self.expandedHeaderHeight = expandedHeaderHeight
        self.collapsedHeaderHeight = collapsedHeaderHeight
        self.offset = offset
        self._headerState = headerState
        self.headerView = headerView
        self.scrollView = scrollView
    }
    
    var body: some View {
        ZStack(alignment: .top) {
            scrollView()
            headerView()
                .frame(height: currentHeaderHeight)
                .padding(.horizontal)
                .offset(y: offset < 0 ? -offset : 0) // fix position
                .zIndex(1)
        }
        .onChange(of: offset) { oldValue, newValue in
            if newValue >= expandedHeaderHeight {
                updateHeaderState(futureState: .collapsed)
            } else {
                updateHeaderState(futureState: .expanded)
            }
        }
    }
    
    private func updateHeaderState(futureState: HeaderState){
        if headerState != futureState {
            Task { @MainActor in
                self.headerState = futureState
            }
        }
    }
}

// MARK: Playground
@available(iOS 18.0, *)
struct CollapsibleHeaderDemo: View {
    @State var headerState: HeaderState = .expanded
    @State private var scrollProperties: ScrollGeometry = .init(contentOffset: .zero, contentSize: .zero, contentInsets: .init(), containerSize: .zero)

    private let expandedHeaderHeight: CGFloat = 180
    private let collapsedHeaderHeight: CGFloat = 56

    var body: some View {
        NavigationStack {
            VStack {

                CollapsableHeader(
                    expandedHeaderHeight: expandedHeaderHeight,
                    collapsedHeaderHeight: collapsedHeaderHeight,
                    offset: scrollProperties.offsetY,
                    headerState: $headerState,
                    headerView: headerView,
                    scrollView: scrollableView)
                .navigationTitle("Collapsible header")
#if os(iOS)
                .navigationBarTitleDisplayMode(.inline)
#endif
            }
        }
    }
    
    @ViewBuilder
    func headerView() -> some View {
        let opacity = 1 - min(max(scrollProperties.offsetY / expandedHeaderHeight, 0), 1)

        Group {
            switch(headerState) {
            case .collapsed:
                RoundedRectangle(cornerRadius: 0)
                    .foregroundStyle(.green.tertiary)
                    .frame(maxWidth: .infinity)
                    .overlay {
                        Text("Collapsed header")
                    }

            case .expanded:
                RoundedRectangle(cornerRadius: 16)
                    .foregroundStyle(.blue.tertiary)
                    .frame(maxWidth: .infinity)
                    .overlay {
                        Text("Expanded header")
                            .opacity(opacity)
                    }
            }
        }
        .background(.windowBackground)
    }
    
    @ViewBuilder
    func scrollableView() -> some View {
        ScrollView {
            LazyVStack {
                ForEach(0..<40, id: \.self) { val in
                    Text("Line \(String(val))")
                        .padding()
                        .frame(maxWidth: .infinity)
                        .border(.red)
                }
            }
            .padding(.top, expandedHeaderHeight + 8) // Set top padding as expanded header height
        }
        .onScrollGeometryChange(for: ScrollGeometry.self, of: {$0}, action: { oldValue, newValue in
            scrollProperties = newValue
        })
//        .scrollTargetBehavior(SnapHeaderScrollBehavior(height: expandedHeaderHeight, threshold: 0.5))
    }
}

#Preview {
    if #available(iOS 18.0, *) {
        CollapsibleHeaderDemo()
    } else {
        // Fallback on earlier versions
    }
}
