//
//  MemberRowView.swift
//  AHKEventsSUI
//
//  Created by Egor Ledkov on 25.09.2022.
//

import SwiftUI

struct MemberRowView: View {
    let member: Member
    
    var body: some View {
        HStack {
            LoadingImageView(url: URL(string: member.photo ?? ""))
                .frame(width: 50, height: 50)
                .clipShape(Circle())
            
            VStack(alignment: .leading, spacing: 8) {
                Text(member.name)
                Text(member.companyRU ?? "")
                    .font(.footnote)
            }
            Spacer()
        }
    }
}

struct MemberRowView_Previews: PreviewProvider {
    static var previews: some View {
        MemberRowView(member: DataStore.shared.members.first!)
    }
}
