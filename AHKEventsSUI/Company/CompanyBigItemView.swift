//
//  CompanyBigItemView.swift
//  AHKEventsSUI
//
//  Created by Egor Ledkov on 25.09.2022.
//

import SwiftUI

struct CompanyBigItemView: View {
    let company: Company
    
    var body: some View {
        VStack {
            LoadingImageView(url: URL(string: company.logo ?? ""))
                .frame(width: 180, height: 180)
            Spacer()
            Text(company.pRNameRU ?? "")
                .bold()
                .padding([.leading, .trailing], 8)
            Text(company.descriptionRU ?? "")
                .lineLimit(2)
                .font(.footnote)
                .padding(8)
        }
        .frame(width: 200, height: 300, alignment: .center)
        .background(.background)
        .clipped()
        .shadow(color: .gray, radius: 6, x: 5, y: 5)
    }
}

struct CompanyBigItemView_Previews: PreviewProvider {
    static var previews: some View {
        CompanyBigItemView(company: DataStore.shared.companies.first!)
    }
}
