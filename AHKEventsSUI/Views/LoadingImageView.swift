//
//  LoadingImageView.swift
//  AHKEventsSUI
//
//  Created by Egor Ledkov on 25.09.2022.
//

import SwiftUI

struct LoadingImageView: View {
    let url: URL?
    
    var body: some View {
		AsyncImage(url: url) { phase in
			
			if let image = phase.image {
				image
					.resizable()
					.aspectRatio(contentMode: .fill)
			} else if phase.error != nil {
				Image(systemName: "person.circle")
					.resizable()
			} else {
				HStack {
					Spacer()
					ProgressView()
					Spacer()
				}
			}
		}
	}
}

struct LoadingImageView_Previews: PreviewProvider {
    static var previews: some View {
        LoadingImageView(url: URL(string: "https://images.admiralcloud.com/v5/deliverEmbed/959b3894-24d6-4ca5-b9c5-9f0216f2086e/image")!)
            .frame(width: 200, height: 200)
    }
}
