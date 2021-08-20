//
//  LoadingView.swift
//  AirportMingle
//
//  Created by Jippe Joosten on 20/08/2021.
//

import SwiftUI

struct LoadingView: View {
    var body: some View {
        Image(systemName: "airplane")
            .foregroundColor(.blue)
            .font(.system(size: 64, weight: .regular))
    }
}

struct LoadingView_Previews: PreviewProvider {
    static var previews: some View {
        LoadingView()
    }
}
