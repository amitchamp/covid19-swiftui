//
//  BarGraphView.swift
//  Covid19
//
//  Created by Sumit on 15/05/20.
//  Copyright © 2020 Tutorials. All rights reserved.
//

import SwiftUI

struct BarGraphView: View {

    var selectedCaseDetailByCountry: [CaseDetailByCountry]
    
    @State var activeCase : [[CGFloat]] = [ [10, 10, 10, 12, 22, 40, 50, 10, 10, 10, 12, 22, 40, 50, 10, 10, 10, 12, 22, 40, 50, 40, 50, 10, 10, 10, 12, 22, 40, 50] ]
    
    fileprivate func convertDate(date: String) -> String {
        let dateInArray = date.components(separatedBy: "T00").first?.components(separatedBy: "-")
        
        return (dateInArray?[2])! + "-" + (dateInArray?[1])!
    }

    var body: some View {
        let maxIndexValue = self.selectedCaseDetailByCountry.count
        var maximumValue = 0
        var divisibleBy = 1000
        
        for detail in selectedCaseDetailByCountry {
            if maximumValue < detail.Cases {
                maximumValue = detail.Cases
            }
        }

        divisibleBy = maximumValue < 10000 ? 1000 : 10000

        return VStack(alignment: .leading, spacing: 10) {
            Text("Last 30 days")

            ScrollView(.horizontal) {
                HStack(alignment: .center, spacing: 2) {
                    ForEach(0..<activeCase[0].count, id: \.self) { indexValue in
                        BarView(
                            value: CGFloat(self.selectedCaseDetailByCountry[indexValue >= maxIndexValue ? 0 : indexValue].Cases / divisibleBy),
                            cornerRadius: CGFloat(integerLiteral: 10 * 0),
                            maxHeight: 100,
                            date: self.convertDate(date: self.selectedCaseDetailByCountry[indexValue >= maxIndexValue ? 0 : indexValue].Date),
                            caseValue: self.selectedCaseDetailByCountry[indexValue >= maxIndexValue ? 0 : indexValue].Cases
                        )
                    }
                }
                .padding(.top, 1)
            }
        }
    }
}

struct BarView: View{

    var value: CGFloat
    var cornerRadius: CGFloat
    var maxHeight: CGFloat
    var date: String
    var caseValue: Int
    
    var body: some View {
        return VStack {
            ZStack (alignment: .bottom) {
                RoundedRectangle(cornerRadius: cornerRadius)
                    .frame(width: 28, height: self.maxHeight)
                    .foregroundColor(.white)

                VStack(alignment: .trailing) {
                    ZStack(alignment: .top) {
                        RoundedRectangle(cornerRadius: cornerRadius)
                            .frame(width: 25, height: value * 3 == 0 ? 1 : value * 3)
                            .foregroundColor(Color("LightViolet"))
                        
                        Text("\(caseValue)")
                            .frame(width: 28)
                            .font(.system(size: 7))
                            .padding(.top, -10)
                    }
                }
            }.padding(.bottom, 6)
            
            Text("\(date)")
                .font(.system(size: 10))
                .foregroundColor(.gray)
        }
        .frame(height: self.maxHeight + 40)
    }
}

struct BarGraphView_Previews: PreviewProvider {
    static var previews: some View {
        BarGraphView(selectedCaseDetailByCountry: CaseDetailByCountry.getDefaulValue())
    }
}
