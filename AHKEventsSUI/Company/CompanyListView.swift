//
//  CompanyListView.swift
//  AHKEventsSUI
//
//  Created by Egor Ledkov on 25.09.2022.
//

import SwiftUI

struct CompanyListView: View {
    let companies: [Company]
    
    var body: some View {
        NavigationView {
            List {
                Text("Спонсоры")
                    .font(.title2)
                    .listRowSeparator(.hidden)
                ScrollView(.horizontal, showsIndicators: true) {
                    HStack(spacing: 24) {
                        ForEach(companies.filter({ $0.type == .sponsor })) { company in
                            CompanyBigItemView(company: company)
                        }
                    }.padding(16)
                }.listRowSeparator(.hidden)
                Text("Партнеры")
                    .font(.title2)
                    .listRowSeparator(.hidden)
                ScrollView(.horizontal, showsIndicators: true) {
                    HStack(spacing: 24)  {
                        ForEach(companies.filter({ $0.type == .partner })) { company in
                            CompanyBigItemView(company: company)
                        }
                    }
                    .padding(16)
                }.listRowSeparator(.hidden)
            }
            .listStyle(.plain)
            .padding(0)
            .navigationTitle("Компании")
        }
    }
}

struct CompanyListView_Previews: PreviewProvider {
    static var previews: some View {
        CompanyListView(companies: DataStore.shared.companies)
    }
}
