//
//  LowestPriceModel.swift
//  MediNest Pro
//
//  Created by Owais on 6/25/26.
//

import Foundation

struct LowestPriceModel: Identifiable {
    let id: UUID = UUID()
    let title: String
    let deliveryDate: String
    let mrp: String
    let discount: String
    let finalPrice: String
    let quantityCount: String
    let productQuantity: String
    let productType: String
    let productImage: String
    let rating: String
}

let lowestPriceData: [LowestPriceModel] = [
    LowestPriceModel(
        title: "Odonil Neem Air Freshener, 192 g",
        deliveryDate: "BY TUE, 23 JUN",
        mrp: "₹280",
        discount: "50% off",
        finalPrice: "₹140",
        quantityCount: "4x48 gm spray",
        productQuantity: "Pack",
        productType: "Air Freshener",
        productImage: "placeholder",
        rating: "4.2"
    ),
    
    LowestPriceModel(
        title: "Apollo Essentials Aqua Blue Hand Wash, 250 ml",
        deliveryDate: "BY TUE, 23 JUN",
        mrp: "₹160",
        discount: "38% off",
        finalPrice: "₹99.2",
        quantityCount: "2x250 ml",
        productQuantity: "Bottle",
        productType: "Hand Wash",
        productImage: "placeholder",
        rating: "3.9"
    ),
    
    LowestPriceModel(
        title: "The Man Company Sky Eau De Parfum, 50 ml",
        deliveryDate: "BY FRI, 26 JUN",
        mrp: "₹749",
        discount: "75% off",
        finalPrice: "₹187.25",
        quantityCount: "50 ml spray",
        productQuantity: "Bottle",
        productType: "Perfume",
        productImage: "placeholder",
        rating: "4.4"
    ),
    
    LowestPriceModel(
        title: "Pond’s Super Light Gel Moisturiser, 147 g",
        deliveryDate: "BY WED, 24 JUN",
        mrp: "₹299",
        discount: "20% off",
        finalPrice: "₹239.2",
        quantityCount: "147 g",
        productQuantity: "Jar",
        productType: "Moisturiser",
        productImage: "placeholder",
        rating: "4.5"
    ),
    
    LowestPriceModel(
        title: "Lacto Calamine Sunscreen SPF 50, 50 g",
        deliveryDate: "BY THU, 25 JUN",
        mrp: "₹349",
        discount: "30% off",
        finalPrice: "₹244.3",
        quantityCount: "50 g",
        productQuantity: "Tube",
        productType: "Sunscreen",
        productImage: "placeholder",
        rating: "4.1"
    ),
    
    LowestPriceModel(
        title: "Mamaearth Onion Hair Oil, 150 ml",
        deliveryDate: "BY TUE, 23 JUN",
        mrp: "₹399",
        discount: "25% off",
        finalPrice: "₹299.25",
        quantityCount: "150 ml",
        productQuantity: "Bottle",
        productType: "Hair Oil",
        productImage: "placeholder",
        rating: "4.3"
    ),
    
    LowestPriceModel(
        title: "Dabur Honey Squeezy, 400 g",
        deliveryDate: "BY SAT, 27 JUN",
        mrp: "₹210",
        discount: "15% off",
        finalPrice: "₹178.5",
        quantityCount: "400 g",
        productQuantity: "Bottle",
        productType: "Honey",
        productImage: "placeholder",
        rating: "4.6"
    ),
    
    LowestPriceModel(
        title: "Cetaphil Gentle Skin Cleanser, 125 ml",
        deliveryDate: "BY THU, 25 JUN",
        mrp: "₹399",
        discount: "18% off",
        finalPrice: "₹327.18",
        quantityCount: "125 ml",
        productQuantity: "Bottle",
        productType: "Face Wash",
        productImage: "placeholder",
        rating: "4.7"
    ),
    
    LowestPriceModel(
        title: "Himalaya Baby Lotion, 200 ml",
        deliveryDate: "BY WED, 24 JUN",
        mrp: "₹240",
        discount: "22% off",
        finalPrice: "₹187.2",
        quantityCount: "200 ml",
        productQuantity: "Bottle",
        productType: "Baby Care",
        productImage: "placeholder",
        rating: "4.0"
    ),
    
    LowestPriceModel(
        title: "Nivea Men Deep Impact Shower Gel, 250 ml",
        deliveryDate: "BY FRI, 26 JUN",
        mrp: "₹275",
        discount: "28% off",
        finalPrice: "₹198",
        quantityCount: "250 ml",
        productQuantity: "Bottle",
        productType: "Body Wash",
        productImage: "placeholder",
        rating: "4.2"
    )
]
