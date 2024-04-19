//
//  AnyLayoutUI.swift
//  SwiftUIBegin
//
//  Created by MP on 18.04.2024.
//

import SwiftUI

struct AnyLayoutUI: View {
    
    @Environment (\.horizontalSizeClass) private var horizontalSizeClass
    @Environment (\.verticalSizeClass) private var verticalSizeClass
    
    var body: some View {
        VStack(spacing: 40) {
            Text("Horizontal:\(horizontalSizeClass.debugDescription)")
            Text("Vertical:\(verticalSizeClass.debugDescription)")
            
            let layout: AnyLayout = horizontalSizeClass == .compact ? AnyLayout(VStackLayout()) : AnyLayout(HStackLayout())
            layout {
                Text("Alpha")
                Text("Beta")
                Text("Gamma")
            }
        }
    }
}

struct AnyLayoutUI_Previews: PreviewProvider {
    static var previews: some View {
        AnyLayoutUI()
    }
}
