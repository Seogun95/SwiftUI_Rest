//
//  ContentView.swift
//  SwiftUI_Rest
//
//  Created by 김선중 on 2021/05/01.
//

import SwiftUI

struct ContentView: View {
    @State private var wakeup = Date()
    @State private var sleepAmount = 8.0
    @State private var coffeeAmount = 1
    
    var body: some View {
        NavigationView {
            VStack(alignment: .leading) {
                Text("당신은 언제 기상하십니까?")
                    .font(.headline)
                    .padding(.top, 50)
                
                DatePicker("시간을 입력해주세요.", selection: $wakeup, displayedComponents: .hourAndMinute)
                    .labelsHidden()
                
                
                Spacer()
                
                Text("수면 시간")
                    .font(.headline)
                
                Stepper(value: $sleepAmount, in: 3...12, step: 0.5) {
                    Text("\(sleepAmount, specifier: "%g") 시간")
                }
                
                Spacer()
                
                Text("하루에 마시는 커피 양")
                    .font(.headline)
                Stepper(value:$coffeeAmount, in: 1...15) {
                    if coffeeAmount == 1 {
                        Text("1 잔")
                    } else {
                        Text("\(coffeeAmount) 잔")
                    }
                    
                }
                Spacer().frame(height: 90)
                
            }
            
            .padding()
            .frame(height: 500)
            .navigationBarTitle("충분한 휴식")
            .navigationBarItems(trailing:
                                    Button(action: calculateBedtime) {
                                        Text("계산")
                                        Image(systemName: "bell.fill")
                                    }
            )
            
        }
    }
    
    func calculateBedtime() {
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
