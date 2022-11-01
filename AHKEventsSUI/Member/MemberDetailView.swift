//
//  MemberDetailView.swift
//  AHKEventsSUI
//
//  Created by Egor Ledkov on 25.09.2022.
//

import SwiftUI

struct MemberDetailView: View {
    let member: Member
    
    var body: some View {
        VStack(alignment: .center, spacing: 16) {
            LoadingImageView(url: URL(string: member.photo ?? ""))
                .frame(width: 200, height: 200)
                .clipShape(Circle())
            
            Text(member.name)
                .font(.title2)
                .bold()
            Text(member.positionRU ?? "")
                .font(.subheadline)
                .foregroundColor(.secondary)
                .multilineTextAlignment(.center)
            Text(member.companyRU ?? "")
                .multilineTextAlignment(.center)
            
            Button(action: {}) {
                HStack {
                    Image(systemName: "person.badge.plus")
                    Text("Запросить контакт")
                }
            }
            .buttonStyle(StandartButtonStyle())
            
            Spacer()
        }
        .padding([.leading, .trailing], 16)
    }
}

struct MemberDetailView_Previews: PreviewProvider {
    static var previews: some View {
        MemberDetailView(member: DataStore.shared.members.first!)
    }
}
