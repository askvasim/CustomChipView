//
//  ChipView.swift
//  CustomChipView
//
//  Created by Vasim Khan on 2/20/23.
//

import SwiftUI

struct ChipView: View {
    let systemImage: String
    let titleKey: LocalizedStringKey
    @State var isSelected: Bool
    
    var body: some View {
        HStack(spacing: 4) {
            Image.init(systemName: systemImage).font(.body)
            Text(titleKey).font(.body).lineLimit(1)
        }
        .padding(.vertical, 4)
        .padding(.leading, 4)
        .padding(.trailing, 10)
        .foregroundColor(isSelected ? .white : .blue)
        .background(isSelected ? Color.blue : Color.white)
        .cornerRadius(20)
        .overlay(
            RoundedRectangle(cornerRadius: 20)
                .stroke(Color.blue, lineWidth: 1.5)
            
        ).onTapGesture {
            isSelected.toggle()
        }
    }
}



struct ChipView_Previews: PreviewProvider {
    static var previews: some View {
        ChipView(systemImage: "heart.circle", titleKey: "Title", isSelected: false)
            .previewLayout(.sizeThatFits)
            .padding()
    }
}


