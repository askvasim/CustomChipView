//
//  ContentView.swift
//  CustomChipView
//
//  Created by Vasim Khan on 2/20/23.
//

import SwiftUI

struct ContentView: View {
    @StateObject var viewModel = ChipsViewModel()
    
    var body: some View {
        VStack(spacing: 16) {
            Text("Select Your Chips")
                .font(.title)
                .fontWeight(.bold)
            ScrollView {
                ChipContainerView(viewModel: viewModel)
            }
            Spacer()
        }
        .padding(.horizontal, 16)
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}


