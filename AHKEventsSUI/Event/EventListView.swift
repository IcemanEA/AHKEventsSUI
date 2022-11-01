//
//  EventListView.swift
//  AHKEventsSUI
//
//  Created by Egor Ledkov on 25.09.2022.
//

import SwiftUI

struct EventListView: View {
    let events: [Event]
    
    var body: some View {
        NavigationView {
            List(events) { event in
                ZStack {
                    NavigationLink(destination: EventDetailView(event: event)) {
                        EmptyView()
                    }
                    EventBigRowView(event: event)
                }.listRowSeparator(.hidden)
            }
            .listStyle(.plain)
            .navigationTitle("Мероприятия")            
            
        }
    }
}

struct EventListView_Previews: PreviewProvider {
    static var previews: some View {
        EventListView(events: DataStore.shared.events)
    }
}
