//
//  HistoryModel.swift
//  Challenge05
//
//  Created by Anna Alicia Milani on 14/11/22.
//

import Foundation
import SwiftUI

struct HistoryModel: Identifiable, Hashable {
    var id = UUID()
    var name: String
    var titleList: [String]
    var sizeTitleList: [Float]
    var description: String

    init(name: String, titleList: [String], sizeTitleList: [Float], description: String) {
        self.name = name
        self.titleList = titleList
        self.sizeTitleList = sizeTitleList
        self.description = description
    }
}

func createHistoryList() -> [HistoryModel] {
    var historyList = [HistoryModel]()
    // swiftlint:disable:next line_length
    historyList.append(HistoryModel(name: "Aranha", titleList: ["a dona", "Aranha"], sizeTitleList: [32, 48], description: "A previsão de hoje é de chuva forte, ajude a teimosa dona Aranha a subir pela parede. Nesta dinâmica musical de jogo da memória você deve combinar os pares para desbloquear novos sons e quem sabe a música inteira."))
    // swiftlint:disable:next line_length
    historyList.append(HistoryModel(name: "Borboleta", titleList: ["a", "Borboleta"], sizeTitleList: [32, 48], description: "Olha a borboleta tá na cozinha! vamos ajudá-la a fazer um chocolate para sua madrinha? Nesta dinâmica musical de jogo da memória você deve combinar os pares para desbloquear novos sons e quem sabe a música inteira."))
    // swiftlint:disable:next line_length
    historyList.append(HistoryModel(name: "Barata", titleList: ["a", "Barata", "diz que tem"], sizeTitleList: [32, 48, 32], description: "Ajude a desmascarar as mentiras da Barata numa dinâmica musical de jogo da memória onde você deve combinar os pares para desbloquear novos sons e quem sabe a música inteira."))

    return historyList
}
