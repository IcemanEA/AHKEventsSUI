//
//  EventDetailView.swift
//  AHKEventsSUI
//
//  Created by Egor Ledkov on 25.09.2022.
//

import SwiftUI

struct EventDetailView: View {
    let event: Event
    
    private let members = DataStore.shared.members
    
    var body: some View {
        List {
            ZStack(alignment: .leading) {
                LoadingImageView(url: URL(string: event.image ?? ""))
                    .frame(height: 150)
                    .clipped()
                    .colorMultiply(.gray.opacity(1))
                                    
                VStack(alignment: .leading)  {
                    Spacer()
                    Text(event.nameRU)
                        .font(.title2)
                        .bold()
                        .lineLimit(2)
                }
                .foregroundColor(.white)
                .frame(height: 128)
                .padding(EdgeInsets(top: 8, leading: 16, bottom: 8, trailing: 16))
            }.listRowSeparator(.hidden)
            VStack(alignment: .leading, spacing: 16) {
                Text("Участники")
                    .bold()
                VStack(alignment: .leading) {
                    Text("Компании")
                        .font(.footnote)
                    Text("80 записей")
                }
                VStack(alignment: .leading)  {
                    Text("Участники")
                        .font(.footnote)
                    Text("131 запись")
                }
            }.padding()
                        
            VStack(alignment: .leading, spacing: 16) {
                Text(event.descriptionRU ?? "")
                Text("Программа")
                    .bold()
                Text(event.programRU ?? "")
            }.padding()
            VStack(alignment: .leading, spacing: 16) {
                Text(event.addressRU ?? "")
            }.padding()
        }
        .listStyle(.plain)
        .padding([.top, .leading, .trailing], -16)
    }
}

struct EventDetailView_Previews: PreviewProvider {
    static var previews: some View {
        EventDetailView(event: DataStore.shared.events.first!)
    }
}
