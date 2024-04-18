//
//  NativePopoverUI.swift
//  SwiftUIBegin
//
//  Created by MP on 16.04.2024.
//

import SwiftUI

struct NativePopoverUI: View {
    
    @State private var showPopover: Bool = false
    @State private var feedBackOptions: [String] = [
        "Super", "Normal" , "Stupid", "Bad"]
        
    
    var body: some View {
        ZStack {
            Color.gray.ignoresSafeArea()
            VStack {
//                Button {
//                    showPopover.toggle()
//                } label: {
//                    Text("Click Me")
//                }
//                .popover(isPresented: $showPopover) {
//                    Text("My Popover")
//                }
                
                Button {
                    showPopover.toggle()
                } label: {
                    Text("Raiting")
                }
                
                .popover(isPresented: $showPopover, attachmentAnchor: .point(.top)) {
                    VStack {
                        ForEach(feedBackOptions, id: \.self) { Option in
                            Button {
                                
                            } label: {
                                Text(Option)
                            }

                        }
                    }
                    
                    //.presentationCompactAdaptation NOW DISAPERED!
                }
            }
        }
    }
}

struct NativePopoverUI_Previews: PreviewProvider {
    static var previews: some View {
        NativePopoverUI()
    }
}
