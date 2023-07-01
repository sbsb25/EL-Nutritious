//
//  WidgetView.swift
//  EL Nutritious
//
//  Created by Nitin Bhilkar on 6/30/23.
//

import SwiftUI

struct WidgetView: View {
    var body: some View {
        VStack{
            Text("Create your own Widget!")
                .font(Font.custom("OptimaDisplay-Roman", size: 50, relativeTo: .title))
                .font(.system(size: 40))
                .fontWeight(.black)
                .foregroundColor(Color("coralDark"))
                .padding()
                .padding()
            
            Text("Customize your homescreen with our new products! Keep track of your wishlist in a stylish way!")
                .font(Font.custom("kzidenzGroteskBQ-Bold", size: 18, relativeTo: .title))
                .font(.system(size: 40))
                .fontWeight(.black)
                .foregroundColor(Color("coralDark"))
                .padding()
                .padding()
            
            NavigationLink(destination: HomePageView()) {
                Text("Shop!")
                    .tint(.white)
                    .padding()
                    .frame(width: 300, height: 50)
                    .background(Color("coralLight"))
                    .cornerRadius(12)
            }
            
        }
    }
}

struct WidgetView_Previews: PreviewProvider {
    static var previews: some View {
        WidgetView()
    }
}
