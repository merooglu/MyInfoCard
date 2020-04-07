//
//  InfoView.swift
//  MehmetErogluCard
//
//  Created by Mehmet Eroğlu on 7.04.2020.
//  Copyright © 2020 Mehmet Eroğlu. All rights reserved.
//

import SwiftUI

struct InfoView: View {
    let text: String
    let imageName: String
    
    var body: some View {
        RoundedRectangle(cornerRadius: 25)
            .fill(Color.white)
            .frame(height: 50)
            .overlay(HStack {
                Image(systemName: imageName)
                    .foregroundColor(.green)
                    .aspectRatio(contentMode: .fit)
                Text(text)
                .foregroundColor(Color("InfoColor"))
            })
            .padding(.all)
    }
}

struct InfoView_Previews: PreviewProvider {
    static var previews: some View {
        InfoView(text: "Hello", imageName: "phone.fill")
            .previewLayout(.sizeThatFits)
    }
}
