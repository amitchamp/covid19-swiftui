//
//  SymptomView.swift
//  Covid19
//
//  Created by Sumit on 14/05/20.
//  Copyright © 2020 Tutorials. All rights reserved.
//

import SwiftUI

struct SymptomView: View {
    
    let symptoms: [Symptom] = [
        Symptom(imageName: "symptoms_1", name: "Fever"),
        Symptom(imageName: "symptoms_2", name: "Dry Cough"),
        Symptom(imageName: "symptoms_3", name: "Headache"),
        Symptom(imageName: "symptoms_4", name: "Breathless"),
    ]
    
    var body: some View {
        return VStack(alignment: .leading) {
            HStack {
                Text("Symptoms of")
                    .bold()
                    .font(.system(size: 20))
                
                Text("Covid 19")
                    .bold()
                    .font(.system(size: 20))
                    .foregroundColor(Color("LightViolet"))
            }
            
            ScrollView(.horizontal, showsIndicators: false) {
                HStack {
                    ForEach(symptoms, id: \.self) { detail in
                        VStack {
                            ZStack {
                                RoundedRectangle(cornerRadius: 10)
                                    .fill(
                                        LinearGradient(
                                            gradient: Gradient(colors: [Color("VioletWhite"), .white]), startPoint: .topLeading, endPoint: .bottomTrailing)
                                        
                                    )
                                    .foregroundColor(Color.white)
                                    .frame(width: 80, height: 80)
                                    .shadow(color: Color.gray, radius: 2)
                                
                                Image(detail.imageName)
                                    .resizable()
                                    .scaledToFit()
                                    .frame(width: 70, height: 70)
                            }
                            .frame(height: 85)
                            .padding(.leading, 5)
                            
                            Text(detail.name)
                            .bold()
                                .font(.system(size: 14))
                        }
                        .padding(.trailing, 15)
                    }
                }
            }
        }
    }
}

struct SymptomView_Previews: PreviewProvider {
    static var previews: some View {
        SymptomView()
    }
}
