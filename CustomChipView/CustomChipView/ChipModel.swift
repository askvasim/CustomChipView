//
//  ChipModel.swift
//  CustomChipView
//
//  Created by Vasim Khan on 2/20/23.
//

import Foundation
import SwiftUI

struct ChipModel: Identifiable {
    @State var isSelected: Bool
    let id = UUID()
    let systemImage: String
    let titleKey: LocalizedStringKey
}

class ChipsViewModel: ObservableObject {
//    @Published var dataObject: [ChipModel] = [ChipModel.init(isSelected: false, systemImage: "pencil.circle", titleKey: "Pencil Circle")]
    @Published var chipArray: [ChipModel] = [
        ChipModel(isSelected: false, systemImage: "heart.circle", titleKey: "Heart"),
        ChipModel(isSelected: false, systemImage: "folder.circle", titleKey: "Folder"),
        ChipModel(isSelected: false, systemImage: "pencil.and.outline", titleKey: "Pen"),
        ChipModel(isSelected: false, systemImage: "book.circle", titleKey: "Book"),
        ChipModel(isSelected: false, systemImage: "paperplane.circle", titleKey: "Paper Plain"),
        ChipModel(isSelected: false, systemImage: "opticaldiscdrive", titleKey: "Optical Drive"),
        ChipModel(isSelected: false, systemImage: "doc.circle", titleKey: "Documents")
    ]
    
//    func addChip() {
//        dataObject.append(ChipModel.init(isSelected: false, systemImage: "pencil.circle", titleKey: "Pencil"))
//    }
//
//    func removeLast() {
//        guard dataObject.count != 0 else {
//            return
//        }
//        dataObject.removeLast()
//    }
}


