//
//  HomepageScreenView.swift
//  Covid19
//
//  Created by Sumit on 14/05/20.
//  Copyright © 2020 Tutorials. All rights reserved.
//

import SwiftUI

struct HomepageScreenView: View {

    @EnvironmentObject var caseSummary: CaseSummaryVM

    var body: some View {
        let confirmedCase = self.caseSummary.caseSummary?.Global.TotalConfirmed ?? 0
        
        return NavigationView {
            GeometryReader { geometry in
                ScrollView(.vertical, showsIndicators: false) {
                    ZStack {
                        RoundedRectangle(cornerRadius: 10)
                            .foregroundColor(Color("LightViolet"))
                            .frame(width: geometry.size.width - 20, height: 170)
                        
                        VStack(alignment: .leading, spacing: 5) {
                            Text("Are you feeling sick?")
                                .bold()
                                .font(.system(size: 20))
                                .foregroundColor(Color.white)
                            
                            Text("If you feel sick with symptoms of Covid-19 please call us immediately for help.")
                                .font(.system(size: 14))
                                .foregroundColor(Color.white)
                            
                            Spacer()
                            
                            Button(action: {
                            }) {
                                Text("Call Now")
                                    .bold()
                                    .padding([.leading, .trailing], 30)
                                    .padding([.top, .bottom], 8)
                                    .background(Color.white)
                                    .cornerRadius(40)
                                    .foregroundColor(.green)
                            }
                        }
                        .padding([.leading, .trailing], 10)
                        .padding([.top, .bottom], 20)
                    }
                    
                    SymptomView()
                        .padding(.top, 20)
                    
                    PreventionView()
                        .padding(.top, 20)
                    
                    CaseOverviewView(frameWidth: geometry.size.width - 40, confirmedCase: confirmedCase)
                        .padding(.top, 20)
                    
                    ScreeningView()
                        .padding(.top, 30)
                    
                    DonoteNowView()
                        .padding(.top, 10)
                }
                .padding([.leading, .trailing], 10)
                .frame(width: geometry.size.width)
            }
            .navigationBarTitle("COVID 19", displayMode: .automatic)
            .onAppear {
                self.caseSummary.getCaseSummary(url: "summary")
            }
        }
    }
}

struct HomepageScreenView_Previews: PreviewProvider {
    static var previews: some View {
        HomepageScreenView().environmentObject(CaseSummaryVM())
    }
}
