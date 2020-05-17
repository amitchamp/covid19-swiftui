//
//  CaseOverviewView.swift
//  Covid19
//
//  Created by Sumit on 14/05/20.
//  Copyright © 2020 Tutorials. All rights reserved.
//

import SwiftUI

struct CaseOverviewView: View {
    let frameWidth: CGFloat
    let confirmedCase: Int
    
    var body: some View {
        return ZStack {
            RoundedRectangle(cornerRadius: 15)
                .foregroundColor(Color.white)
                .shadow(color: Color.gray, radius: 2)
                .frame(width: self.frameWidth + 10, height: 70)
            
            HStack {
                Image("covid_map")
                    .resizable()
                    .scaledToFill()
                    .frame(width: 80, height: 60)
                
                Spacer()
                
                VStack(alignment: .leading) {
                    Text("CASES")
                        .bold()
                        .foregroundColor(Color("LightViolet"))

                    Text("Overview Worldwide")
                        .font(.system(size: 14))
                    
                    Text("\(self.confirmedCase) confirmed")
                        .font(.system(size: 12))
                        .foregroundColor(Color.gray)
                }
                Spacer()
                
                Image(systemName: "arrow.right")
            }
            .frame(width: self.frameWidth - 10, height: 70)
            .padding(.leading, 20)
        }
    }
}

struct CaseOverviewView_Previews: PreviewProvider {
    static var previews: some View {
        CaseOverviewView(frameWidth: 300, confirmedCase: 0)
    }
}
