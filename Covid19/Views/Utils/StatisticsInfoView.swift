//
//  StatisticsInfoView.swift
//  Covid19
//
//  Created by Sumit on 15/05/20.
//  Copyright © 2020 Tutorials. All rights reserved.
//

import SwiftUI

struct StatisticsInfoView: View {
    
    let totalConfirmed: Int
    let newConfirmed: Int
    let recorved: Int
    let death: Int

    var body: some View {
        return GeometryReader { geometry in
            VStack(spacing: 10) {
                HStack(spacing: 0) {
                    ZStack {
                        RoundedRectangle(cornerRadius: 15)
                            .foregroundColor(Color("LightBlue"))
                            .frame(width: geometry.size.width / 2 - 10, height: 100)
                            .padding(.trailing, 10)
                        
                        VStack(alignment: .leading) {
                            Text("Total Tested")
                                .bold()
                                .foregroundColor(Color("TextDarkBlue"))
                                .padding(.bottom, 10)
                            
                            Text("\(self.totalConfirmed)")
                                .font(.system(size: 22))
                                .bold()
                                .foregroundColor(Color("TextDarkBlue"))
                        }
                        .padding(.leading, -50)
                        .foregroundColor(Color.green)
                    }
                    
                    ZStack {
                        RoundedRectangle(cornerRadius: 15)
                            .foregroundColor(Color("LightYellow"))
                            .frame(width: geometry.size.width / 2 - 10, height: 100)
                            .padding(.trailing, 10)
                        
                        VStack(alignment: .leading) {
                            Text("Infected")
                                .bold()
                                .foregroundColor(Color("TextDarkYellow"))
                                .padding(.bottom, 10)
                            
                            Text("\(self.newConfirmed)")
                                .font(.system(size: 22))
                                .bold()
                                .foregroundColor(Color("TextDarkYellow"))
                        }
                        .padding(.leading, -70)
                        .foregroundColor(Color.green)
                    }
                }
                
                HStack(spacing: 0) {
                    ZStack {
                        RoundedRectangle(cornerRadius: 15)
                            .foregroundColor(Color("LightGreen"))
                            .frame(width: geometry.size.width / 2 - 10, height: 100)
                            .padding(.trailing, 10)
                        
                        VStack(alignment: .leading) {
                            Text("Recorved")
                                .bold()
                                .foregroundColor(Color("TextDarkGreen"))
                                .padding(.bottom, 10)
                            
                            Text("\(self.recorved)")
                                .font(.system(size: 22))
                                .bold()
                                .foregroundColor(Color("TextDarkGreen"))
                        }
                        .padding(.leading, -40)
                        .foregroundColor(Color.green)
                    }
                    
                    ZStack {
                        RoundedRectangle(cornerRadius: 15)
                            .foregroundColor(Color("LightRed"))
                            .frame(width: geometry.size.width / 2 - 10, height: 100)
                            .padding(.trailing, 10)
                        
                        VStack(alignment: .leading) {
                            Text("Death")
                                .bold()
                                .foregroundColor(Color("TextDarkRed"))
                                .padding(.bottom, 10)
                            
                            Text("\(self.death)")
                                .font(.system(size: 22))
                                .bold()
                                .foregroundColor(Color("TextDarkRed"))
                        }
                        .padding(.leading, -70)
                        .foregroundColor(Color.green)
                    }
                }
            }
        }
    }
}

struct StatisticsInfoView_Previews: PreviewProvider {
    static var previews: some View {
        StatisticsInfoView(totalConfirmed: 0, newConfirmed: 0, recorved: 0, death: 0)
    }
}
