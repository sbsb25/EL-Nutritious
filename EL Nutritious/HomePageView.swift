//
//  HomePageView.swift
//  EL Nutritious
//
//  Created by Nitin Bhilkar on 6/29/23.
//

import SwiftUI

struct HomePageView: View {
    var body: some View {
        VStack{
            Text("We Are Prestige Beauty")
                .font(Font.custom("OptimaDisplay-Roman", size: 20, relativeTo: .title))
                .font(.system(size: 40))
                .fontWeight(.black)
                .foregroundColor(Color("coralDark"))
                .padding()
            
            
            
            
            Text("Shop from our new collection ")
                .font(Font.custom("OptimaDisplay-Roman", size: 45, relativeTo: .title))
                .font(.system(size: 40))
                .fontWeight(.black)
                .foregroundColor(Color("coralDark"))
            
            
            ScrollView(.horizontal, showsIndicators: true) {
                HStack(spacing: 20) {
                    Link(destination: URL(string: "https://us.lookfantastic.com/estee-lauder-nutritious-airy-moisturising-lotion-100ml/14203977.html?affil=thggps&switchcurrency=USD&shippingcountry=US&utm_source=google&utm_medium=organic&utm_campaign=shopping")!, label: {Image("Image0")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                        .frame(width: 130)})
                    Link(destination: URL(string: "https://www.esteelauder.com/product/26389/112200/product-catalog/skincare/toner-treatment-lotion/nutritious/radiant-essence-treatment-lotion?size=6.7_oz.")!, label: {Image("Image1")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                        .frame(width: 130)})
                    Link(destination: URL(string: "https://www.esteelauder.com/product/684/112204/product-catalog/skincare/cleanser-makeup-remover/nutritious/2-in-1-foam-cleanser?size=4.2_oz.")!, label: {Image("Image3")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                        .frame(width: 130)})
                    Link(destination: URL(string: "https://www.esteelauder.com/product/688/112202/product-catalog/skincare/moisturizer/nutritious/melting-soft-crememask-moisturizer?size=1.7_oz.")!, label: {Image("Image2")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                        .frame(width: 130)})
                    
                    
                }
                .padding()
            }
            Text("Click on the product you would like to explore!")
                .font(Font.custom("AkzidenzGroteskBQ-Bold", size: 20, relativeTo: .title))
                .font(.system(size: 40))
                .fontWeight(.black)
                .foregroundColor(Color("coralDark"))
                .padding()
                .padding()
            
            Text("Ingeniously calibrated. Nutrient-rich. Featuring 92% naturally derived formulas. Skincare that will help skin flourish and glow  :) ")
                .font(Font.custom("AkzidenzGroteskBQ-Bold", size: 15, relativeTo: .title))
                .font(.system(size: 40))
                .fontWeight(.black)
                .foregroundColor(Color("coralDark"))
            
            Spacer()
            NavigationLink(destination: WidgetView()) {
                Text("Make your own Widget!")
                    .tint(.white)
                    .padding()
                    .frame(width: 300, height: 50)
                    .background(Color("coralLight"))
                    .cornerRadius(12)
                    .padding()
            }
        }
    }
}
    
    struct HomePageView_Previews: PreviewProvider {
        static var previews: some View {
            HomePageView()
        }
    }

