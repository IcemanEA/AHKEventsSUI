//
//  ContentView.swift
//  AHKEventsSUI
//
//  Created by Egor Ledkov on 25.09.2022.
//

import SwiftUI

struct ContentView: View {
    private let events = DataStore.shared.events
    private let members = DataStore.shared.members
    private let companies = DataStore.shared.companies
    
    var body: some View {
        TabView {
            EventListView(events: events)
                .tabItem {
                    Image(systemName: "house")
                    Text("Мероприятия")
                }
            MemberListView(members: members)
                .tabItem {
                    Image(systemName: "person.3")
                    Text("Контакты")
                }
            CompanyListView(companies: companies)
                .tabItem {
                    Image(systemName: "tray.full")
                    Text("Компании")
                }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
