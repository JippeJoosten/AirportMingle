//
//  RadioButtonCell.swift
//  AirportMingle
//
//  Created by Jippe Joosten on 20/08/2021.
//

import SwiftUI

struct RadioButtonCell: View {
    var action: (() -> Void)
    var title: String
    var checked: Bool

    var body: some View {
        Button(action: action, label: {
            HStack {
                Text(title)
                Spacer()
                if checked {
                    Image(systemName: "checkmark")
                }
            }
        })
    }
}

struct RadioButtonCell_Previews: PreviewProvider {
    static var previews: some View {
        List {
            RadioButtonCell(action: {}, title: "Test", checked: true)
        }
    }
}
