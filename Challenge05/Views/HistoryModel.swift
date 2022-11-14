//
//  HistoryModel.swift
//  Challenge05
//
//  Created by Anna Alicia Milani on 14/11/22.
//

import Foundation
import SwiftUI

class HistoryModel: Identifiable, ObservableObject {
    var name: String
    var titleList: [String]
    var sizeTitleList: [Int]

    init(name: String, titleList: [String], sizeTitleList: [Int]) {
        self.name = name
        self.titleList = titleList
        self.sizeTitleList = sizeTitleList
    }
}

func createHistoryList() -> [HistoryModel] {
    var historyList = [HistoryModel]()

    historyList.append(HistoryModel(name: "Barata", titleList: ["a dona", "Aranha"], sizeTitleList: [32, 48]))

    historyList.append(HistoryModel(name: "Borboleta", titleList: ["a", "Borboleta"], sizeTitleList: [32, 48]))

    historyList.append(HistoryModel(name: "Barata", titleList: ["a", "Barata", "diz que tem"], sizeTitleList: [32, 48, 32]))

    return historyList
}
