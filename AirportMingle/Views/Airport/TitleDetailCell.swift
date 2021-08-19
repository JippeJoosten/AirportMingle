//
//  TitleDetailCell.swift
//  AirportMingle
//
//  Created by Jippe Joosten on 19/08/2021.
//

import SwiftUI

struct TitleDetailCell: View {
    var title: String
    var detail: String
    
    var body: some View {
        HStack {
            Text(title)
            Spacer()
            Text(detail)
                .foregroundColor(Color.gray)
        }
    }
}

struct TitleDetailCell_Previews: PreviewProvider {
    static var previews: some View {
        TitleDetailCell(title: "Test", detail: "Detail")
    }
}
