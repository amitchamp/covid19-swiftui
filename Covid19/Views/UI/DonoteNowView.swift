//
//  DonoteNowView.swift
//  Covid19
//
//  Created by Sumit on 15/05/20.
//  Copyright © 2020 Tutorials. All rights reserved.
//

import SwiftUI

struct DonoteNowView: View {
    var body: some View {
        return ZStack {
            RoundedRectangle(cornerRadius: 10)
                .foregroundColor(Color("LightViolet"))
                .frame(width: 350, height: 170)

            VStack(alignment: .leading, spacing: 10) {
                Text("Coronavirus Relief Fund")
                    .bold()
                    .foregroundColor(Color.white)
               
                Text("To this fund will help stop virus's spread and give communication the front lines.")
                    .font(.system(size: 14))
                    .lineLimit(nil)
                    .multilineTextAlignment(.leading)
                    .foregroundColor(Color.white)

                Spacer()

                HStack {
                    Spacer()
                    Button(action: {
                    }) {
                        Text("Donate Now")
                            .bold()
                            .padding([.leading, .trailing], 30)
                            .padding([.top, .bottom], 8)
                            .background(Color.white)
                            .cornerRadius(40)
                            .foregroundColor(.green)
                    }
                }
                
            }
            .padding([.leading, .trailing], 15)
            .padding([.top, .bottom], 20)
        }
        .frame(width: 350, height: 170)
    }
}

struct DonoteNowView_Previews: PreviewProvider {
    static var previews: some View {
        DonoteNowView()
    }
}
