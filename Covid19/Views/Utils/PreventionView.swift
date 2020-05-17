//
//  PreventionView.swift
//  Covid19
//
//  Created by Sumit on 14/05/20.
//  Copyright © 2020 Tutorials. All rights reserved.
//

import SwiftUI

struct PreventionView: View {

    let prevention: [Prevention] = [
        Prevention(imageName: "prevention_1", name: "WASH", description: "hands often"),
        Prevention(imageName: "prevention_2", name: "COVER", description: "your cough"),
        Prevention(imageName: "prevention_3", name: "ALWAYS", description: "clean"),
        Prevention(imageName: "prevention_4", name: "USE", description: "mask")
    ]
    
    var body: some View {
        return VStack(alignment: .leading) {
            Text("Prevention")
                .bold()
                .font(.system(size: 20))
            
            ScrollView(.horizontal, showsIndicators: false) {
                HStack {
                    ForEach(prevention, id: \.self) { preventionInfo in
                        ZStack {
                            RoundedRectangle(cornerRadius: 20)
                                .frame(height: 70)
                                .foregroundColor(Color.white)
                                .shadow(color: Color.gray, radius: 2)
                            
                            HStack {
                                Image(preventionInfo.imageName)
                                .resizable()
                                .scaledToFit()
                                .frame(width: 50, height: 50)
                                
                                VStack(alignment: .leading) {
                                    Text(preventionInfo.name)
                                        .bold()
                                        .foregroundColor(Color("LightViolet"))

                                    Text(preventionInfo.description)
                                        .font(.system(size: 14))
                                }
                            }
                            .frame(width: 145, height: 75)
                            .padding([.horizontal], 15)
                            .cornerRadius(20)
                        }
                        .padding(.leading, 5)
                        
                    }
                    .padding(.trailing, 12)
                }
            }
        }
    }
}

struct PreventionView_Previews: PreviewProvider {
    static var previews: some View {
        PreventionView()
    }
}
