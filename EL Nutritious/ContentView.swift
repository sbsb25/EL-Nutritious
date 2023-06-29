//
//  ContentView.swift
//  EL Nutritious
//
//  Created by Shriyadita Bhilkar on 6/20/23.
//

import SwiftUI
import CoreData

struct CustomColor {
    static let coralDark = Color("coralDark")
    static let coralLight  = Color("coralLight")
    static let background = Color("background")
}


struct ContentView: View {
    @State var nameInput: String = ""
    @State var emailInput: String = ""
    @State var birthdayInput: String = ""
    @State private var signUp = "null"
    @State private var display = false
    var body: some View {
        NavigationStack {
            ZStack {
                Color(.white)
                //figure out correct color
                    .ignoresSafeArea()
                VStack{

                    Spacer()
                    Text("NUTRITIOUS")
                        .font(Font.custom("OptimaDisplay-Roman", size: 50, relativeTo: .title))
                        .font(.system(size: 40))
                        .fontWeight(.black)
                        .foregroundColor(Color("coralDark"))
                        .padding()
                
                    
                    Text("Name")
                        .font(Font.custom("AkzidenzGroteskBQ-Bold", size: 18))
                        .foregroundColor(Color("coralDark"))
                    TextField("", text: $nameInput)
                        .multilineTextAlignment(.center)
                        .foregroundColor(Color.white)
                        .background(Color("coralLight"))
                        .padding()
                        .frame(width: 300, height: 50)
                        .background(Color("coralLight"))
                        .cornerRadius(12)
                                
                    Text("Email")
                        .font(Font.custom("AkzidenzGroteskBQ-Bold", size: 18))
                        .foregroundColor(Color("coralDark"))
                    TextField("", text: $emailInput)
                        .multilineTextAlignment(.center)
                        .foregroundColor(Color.white)
                        .background(Color("coralLight"))
                        .padding()
                        .frame(width: 300, height: 50)
                        .background(Color("coralLight"))
                        .cornerRadius(12)
            
                    
                    Spacer()
                    NavigationLink(destination: HomePageView()) {
                        Text("Continue")
                            .tint(.white)
                            .padding()
                            .frame(width: 300, height: 50)
                            .background(Color("coralLight"))
                            .cornerRadius(12)
                        //why it only says sign...
                   
                    }
                   
                }
                    }
                    
                }
            }
        }
        
        
    
    



struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
    
    
    
}

