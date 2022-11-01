//
//  MemberListView.swift
//  AHKEventsSUI
//
//  Created by Egor Ledkov on 25.09.2022.
//

import SwiftUI

struct MemberListView: View {
    let members: [Member]
    
    var body: some View {
        NavigationView {
            List(members) { member in
                                
                NavigationLink(destination: MemberDetailView(member: member)) {
                    MemberRowView(member: member)
                }
                                
            }
            .listStyle(.plain)
            .navigationTitle("Контакты")
        }

    }
}

struct MemberListView_Previews: PreviewProvider {
    static var previews: some View {
        MemberListView(members: DataStore.shared.members)
    }
}
