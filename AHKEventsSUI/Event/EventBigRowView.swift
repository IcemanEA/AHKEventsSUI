//
//  EventBigRowView.swift
//  AHKEventsSUI
//
//  Created by Egor Ledkov on 25.09.2022.
//

import SwiftUI

struct EventBigRowView: View {
    let event: Event
    
    var body: some View {
                
        ZStack(alignment: .leading) {
            LoadingImageView(url: URL(string: event.image ?? ""))
                .frame(height: 128)
                .clipShape(RoundedRectangle(cornerRadius: 10))
                .colorMultiply(.gray.opacity(1))
            
            VStack(alignment: .leading)  {
                Text(event.nameRU)
                    .lineLimit(2)
                Spacer()
                Text("Количество участников: \(event.membersCount)")
                    .font(.footnote)
            }
            .foregroundColor(.white)
            .frame(height: 128)
//            .background(.red)
            .padding(EdgeInsets(top: 8, leading: 16, bottom: 8, trailing: 16))
        }
    }
}

struct EventBigRowView_Previews: PreviewProvider {
    static var previews: some View {
        EventBigRowView(event: DataStore.shared.events.first!)
    }
}
