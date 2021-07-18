//
//  LearnSwiftUIView.swift
//  StarWarsCharacters
//
//  Created by Егор Никитин on 18.07.2021.
//

import SwiftUI

struct LearnSwiftUIView: View {
    
    @State var notificationEnabled = false
    
    var body: some View {
        NavigationView {
            Form {
                Section {
                    Toggle(isOn: $notificationEnabled, label: {
                        Text("Notification Enabled")
                    })
                }
            }
        }.navigationTitle("Settings")
    }
}

struct LearnSwiftUISecondView: View {
    
    @State var speed = 50.0
    @State var isEditing = false
    
    var body: some View {
        VStack {
            Slider(value: $speed, in: 0...100) {
                isEditing in
                self.isEditing = isEditing
            }
            
            Text("\(speed)")
                .foregroundColor(isEditing ? .red : .green)
        }
    }
}

struct Universe: Identifiable {
    var id: String {
        name
    }
    let name: String
}

struct LearnSwiftUIThirdView: View {
    
    @State var universe: Universe?
    
    var body: some View {
        VStack {
            Text("Какая киновселенная вам нравится")
            Button("Marvel") {
                universe = .init(name: "Marvel")
            }
            
            Button("DC") {
                universe = .init(name: "DC")
            }
        }
        .alert(item: $universe) { (universe) -> Alert in
            Alert(title: Text(universe.name), message: Text("Спасибо за выбор"), dismissButton: .cancel())
        }
    }
}

struct Title: ViewModifier {
    func body(content: Content) -> some View {
        content
            .padding()
            .background(Color.gray)
            .font(.title)
    }
}

struct Regular: ViewModifier {
    func body(content: Content) -> some View {
        content
            .padding()
            .font(.callout)
    }
}

struct LearnSwiftUIView_Previews: PreviewProvider {
    static var previews: some View {
        LearnSwiftUIView()
    }
}
