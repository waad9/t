//
//  ServiceDetails.swift
//  SecondChallenge
//
//  Created by هاجر الروقي on 19/05/1444 AH.
//

import Foundation
import SwiftUI


struct ServiceDetails: View {
    @State var product : Product
    @State var items: [String] = ["Bath & Full Haircut", "Bath & Brush", "Bath & Trim", "Bath only"]
    
    
    @State private var multiSelection = Set<UUID>()
    @State var selections: [String] = []
    
    
    var body: some View {
        ZStack {
            VStack{
                Image ("123")
                    .resizable()
                    .frame(width:219.4,height:222)
                //                            .cornerRadius(8)
                    .padding()
                    .foregroundColor(.white)
                ZStack{
                    Color(uiColor: UIColor(red: 235/255, green: 232/255, blue: 231/255, alpha: 100))
                    //                            .background(
                    //                                RoundedCornersShape(corners: [.topLeft, .topRight], radius: 94)
                    //                            )
                    VStack{
                        Text("Grooming")
                            .font(.title)
                            .fontWeight(.bold)
                            .multilineTextAlignment(.center)
                            .foregroundColor( Color(uiColor: UIColor(red: 133/255, green: 116/255, blue: 117/255, alpha: 100)))
                        Text(" help your cat to prevent the formation of hairballs which can cause intestinal blockages.")
                            .font(.body)
                            .fontWeight(.regular)
                            .multilineTextAlignment(.center)
                            .foregroundColor( Color(uiColor: UIColor(red: 133/255, green: 116/255, blue: 117/255, alpha: 100)))
                        List{
                            ForEach(self.items, id: \.self) { item in
                                MultipleSelectionRow(title: item, isSelected: self.selections.contains(item)) {
                                    if self.selections.contains(item) {
                                        self.selections.removeAll(where: { $0 == item })
                                    }
                                    else {
                                        self.selections.append(item)
                                    }
                                }
                            }
                            }.listStyle(.plain)
                            
                        }.frame(width:232,height: 432)
                            .padding()
                    Button {
                        print("s")
                    }label: {
                        NavigationLink(destination:AppointmentDetails(product:product)){
                            Text ("Done")
                                .font(.title)
                                .fontWeight(.semibold)
                                .foregroundColor(Color.white)
                                .padding(.top, 340.0)
                            
                            
                            
                        }
//                        .buttonStyle(GrowingButton())
                    }
                    //                    .border(Color(uiColor: UIColor(red: 242/255, green: 178/255, blue: 99/255, alpha: 100)))
                    //                    .cornerRadius(94,)
                    .ignoresSafeArea()
                }
            }
            
        }
    }
    
    
    
    struct Nora_Previews: PreviewProvider {
        static var previews: some View {
            AppointmentDetails(product:productList[0])
            //        ServiceDetails()
            //            .navigationTitle("Appointment Details")
        }
    }
    
    
    
    struct RoundedCornersShape: Shape {
        let corners: UIRectCorner
        let radius: CGFloat
        
        func path(in rect: CGRect) -> Path {
            let path = UIBezierPath(roundedRect: rect,
                                    byRoundingCorners: corners,
                                    cornerRadii: CGSize(width: radius, height: radius))
            return Path(path.cgPath)
        }
    }
    
    
    
    struct MultipleSelectionRow: View {
        let id = UUID()
        var title: String
        var isSelected: Bool
        var action: () -> Void
        
        var body: some View {
            ZStack{
                Button(action: self.action) {
                    HStack {
                        Text(self.title)
                        if self.isSelected {
                            Spacer()
                            Image(systemName: "checkmark")
                        }
                    }
                }.cornerRadius(45)
            }
        }
    }
    
    
    struct GrowingButton: ButtonStyle {
        
        func makeBody(configuration: Configuration) -> some View {
            configuration.label
                .padding()
                .background(Color(uiColor: UIColor(red: 242/255, green: 178/255, blue: 99/255, alpha: 100)))
                .foregroundColor(.white)
                .clipShape(Capsule())
                .scaleEffect(configuration.isPressed ? 1.2 : 1)
                .animation(.easeOut(duration: 0.2), value: configuration.isPressed)
            
        }
        
    }
}
