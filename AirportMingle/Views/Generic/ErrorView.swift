//
//  ErrorView.swift
//  AirportMingle
//
//  Created by Jippe Joosten on 20/08/2021.
//

import SwiftUI

struct ErrorView: View {
    var error: Error
    @EnvironmentObject private var mainViewModel: MainViewModel

    var body: some View {
        VStack(spacing: 16.0) {
            Image(systemName: "icloud.slash.fill")
                .foregroundColor(.blue)
                .font(.system(size: 64, weight: .regular))
            Text(error.localizedDescription)
            Button(action: { mainViewModel.reload() }, label: {
                Text(L10n.General.retry)
            })
        }
        .padding(.horizontal, 32.0)
    }
}

struct ErrorView_Previews: PreviewProvider {
    static var previews: some View {
        ErrorView(error: NSError(domain: "Doesn't work", code: 0, userInfo: nil))
    }
}
