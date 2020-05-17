//
//  ScreeningView.swift
//  Covid19
//
//  Created by Sumit on 14/05/20.
//  Copyright © 2020 Tutorials. All rights reserved.
//

import SwiftUI

struct ScreeningView: View {
    var body: some View {
        return ZStack {
            RoundedRectangle(cornerRadius: 15)
                .foregroundColor(Color("VioletWhite"))
                .frame(width: 350, height: 150)
            
            HStack {
                VStack(alignment: .leading, spacing: 10) {
                    Text("Covid-19 Screening")
                        .foregroundColor(Color("LightViolet"))
                        .bold()
                    
                    Text("You'll answer a few questions about symptoms, travel and contact you've had with others.")
                        .foregroundColor(Color("LightViolet"))
                        .font(.system(size: 14))
                        .lineLimit(nil)
                        .multilineTextAlignment(.leading)
                }
                
                Image("nurse")
                    .resizable()
                    .frame(width: 150, height: 180)
                    .offset(y: -20)
            }
            .padding(.leading, 15)
        }
    }
}

struct ScreeningView_Previews: PreviewProvider {
    static var previews: some View {
        ScreeningView()
    }
}
