////
////  ContentView.swift
////  t2
////
////  Created by وعد عياد الرويلي on 17/05/1444 AH.
////
//
//import SwiftUI
//
//struct ContentView: View {
//    @State private var numberOfCells: Int = 6
//    @State private var currentlySelectedCell = 0
//    var body: some View {
//        VStack{
//
//            HStack(spacing: 10){
//
//                Button(action: {
//
//                })
//                {
//
//                    Image(systemName: "chevron.left")
//                        .font(.system(size: 28))
//                        .foregroundColor(.gray)
//
//                }
//
////                Text("Profile")
////                    .font(.title)
//
//                Spacer(minLength: 0)
//
//                Button(action: {
//
//                }) {
//
//                    Image(systemName: "bell")
//                        .font(.system(size: 25))
////                     .background(Color("Color"))
//                        .foregroundColor(Color("Color"))
//                        .padding(.vertical, 20)
//                        .padding(.horizontal, 12)
//                       // .background(Color("Color"))
//                        .cornerRadius(10)
//                }
//            }
//            .padding()
//
//                   Text("Enter the Verification Code")
//                .font(.title2)
//                .foregroundColor(Color("Color 3"))
//
//                       //.fontWeight(.semibold)
//                .padding(.top, 100.0)
//
//                .padding(.bottom, 50.0)
//
//
//            HStack {
//                Group {
//                    ForEach(0 ..< self.numberOfCells) { index in
//                        CharacterInputCell(currentlySelectedCell: self.$currentlySelectedCell, index: index)
//                    }
//                }.frame(width:15,height: 56)
//                    .padding(.horizontal)
//                    .background(Color("Color 2"))
//                    .foregroundColor(.white)
//                    .cornerRadius(10)
//                    .keyboardType(.numberPad)
//            }
//            Spacer(minLength: 0)
//        }
//    }
//
//    struct CharacterInputCell: View {
//        @State private var textValue: String = ""
//        @Binding var currentlySelectedCell: Int
//
//        var index: Int
//
//        var responder: Bool {return index == currentlySelectedCell }
//
//        var body: some View {
//            CustomTextField(text: $textValue, currentlySelectedCell: $currentlySelectedCell, isFirstResponder: responder)
//        }
//    }
//
//    struct CustomTextField: UIViewRepresentable {
//
//        class Coordinator: NSObject, UITextFieldDelegate {
//
//            @Binding var text: String
//            @Binding var currentlySelectedCell: Int
//
//            var didBecomeFirstResponder = false
//
//            init(text: Binding<String>, currentlySelectedCell: Binding<Int>){
//                _text = text
//                _currentlySelectedCell = currentlySelectedCell
//            }
//
//            func textFieldDidChangeSelection(_ textField: UITextField) {
//                DispatchQueue.main.async {
//                    self.text = textField.text ?? ""
//                }
//            }
//
//            func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool {
//                let currentText = textField.text ?? ""
//                guard let stringRange = Range(range, in: currentText) else { return false }
//                let updatedText = currentText.replacingCharacters(in: stringRange, with: string)
//                if updatedText.count <= 1 {
//                    self.currentlySelectedCell += 1
//                }
//                return updatedText.count <= 1
//            }
//        }
//
//        @Binding var text: String
//        @Binding var currentlySelectedCell: Int
//
//        var isFirstResponder: Bool = false
//
//        func makeUIView(context: UIViewRepresentableContext<CustomTextField>) -> UITextField {
//            let textField = UITextField(frame: .zero)
//            textField.delegate = context.coordinator
//            textField.textAlignment = .center
//            textField.keyboardType = .decimalPad
//            return textField
//        }
//
//        func makeCoordinator() -> CustomTextField.Coordinator {
//            return Coordinator(text: $text, currentlySelectedCell: $currentlySelectedCell)
//        }
//
//        func updateUIView(_ uiView: UITextField, context: UIViewRepresentableContext<CustomTextField>) {
//            uiView.text = text
//            if isFirstResponder && !context.coordinator.didBecomeFirstResponder  {
//                uiView.becomeFirstResponder()
//                context.coordinator.didBecomeFirstResponder = true
//            }
//        }
//    }
//}
//struct ContentView_Previews: PreviewProvider {
//    static var previews: some View {
//        ContentView()
//    }
//}
import SwiftUI

struct ContentView: View {
 
    @State var CardNumber = ""
    @State var EXPIREDATE = ""
    @State var cvv = ""
    
    var body: some View {
        
        ZStack {
            
            RoundedRectangle(cornerRadius: 70.0)
                .frame(maxWidth: .infinity)
                .foregroundColor(.white)
                .ignoresSafeArea()
                .padding(.top,-30)
                .padding(.top,130.0)
            
            
            Text("Card deatils ")
                .font(.system(size: 30))
                .fontWeight(.bold)
                .foregroundColor(Color(red: 0.524, green: 0.651, blue: 0.619))
                .multilineTextAlignment(.center)
                .padding(.bottom,678.0)
            
            
            VStack {
                
                RoundedRectangle (cornerRadius: 12.0)
                    .frame(width: 200.0 ,height: 50.0)
                    .foregroundColor(Color(red: 0.947, green: 0.7, blue: 0.39))
                //.padding(.leading, 4.42)
                    .padding(.top,600.0)
                
            }
            
            ZStack {
                
                
                Button {
                    print("s")
                }label: {
                    Text ("PURCHASE")
                        .font(.title)
                    
                        .foregroundColor(Color.white)
                        .padding(.top, 600.0)
                    
                  
                    
                }
            }
            
            
            VStack {
                
                RoundedRectangle (cornerRadius: 12.0)
                    .frame(width: 360.0 ,height: 46.0)
                    .foregroundColor(Color(red: 0.974, green: 0.964, blue: 0.965))
                //.padding(.leading, 4.42)
                    .padding(.bottom,180.0)
                
            }
            
            
            VStack {
                
                RoundedRectangle (cornerRadius: 12.0)
                    .frame(width: 360.0 ,height: 46.0)
                    .foregroundColor(Color(red: 0.974, green: 0.964, blue: 0.965))
                //.padding(.leading, 4.42)
                    .padding(.bottom,380.0)
                
            }
            
            VStack {
                
                RoundedRectangle (cornerRadius: 12.0)
                    .frame(width: 360.0 ,height: 46.0)
                    .foregroundColor(Color(red: 0.974, green: 0.964, blue: 0.965))
                //.padding(.leading, 4.42)
                    .padding(.bottom, -70.0)
                
                
                
                
                
                VStack {
                    Text("CARD NUMBER :")
                        .frame(width: 200.0)
                        .fontWeight(.semibold)
                        .foregroundColor(Color(red: 0.593, green: 0.539, blue: 0.545))
                        .multilineTextAlignment(.leading)
                        .padding(.top, -230.0)
                        .padding([.leading],-210.0)
                    
                    
                    Text("EXPIRE DATE  :")
                        .frame(width: 200.0)
                        .fontWeight(.semibold)
                        .foregroundColor(Color(red: 0.593, green: 0.539, blue: 0.545))
                        .multilineTextAlignment(.leading)
                        .padding(.top, -140.0)
                        .padding([.leading],-219.0)
                    
                    
                    
                    Text("CVV  :")
                        .frame(width: 200.0)
                        .fontWeight(.semibold)
                        .foregroundColor(Color(red: 0.586, green: 0.531, blue: 0.537))
                        .multilineTextAlignment(.leading)
                        .padding(.top, -55.0)
                    
                        .padding(.trailing, 300.0)
                    
                    
                    
                }
                .padding(.leading)
                
                
                
                .overlay {
                  
                        TextField("0000 0000 0000 0000",          text: $CardNumber)
                        .padding( .bottom, 390.0 )
                        .padding(.leading , 90)
                    
                        
            
                    
                }
        }
        
        .overlay {
            
            TextField("00/000 ",    text: $EXPIREDATE)
                .padding( .bottom, 180.0 )
                .padding(.leading , 90)
            
        }
        .overlay {
            
            TextField(" 000 ",   text: $cvv)
                .padding( .bottom, -10.0 )
                .padding(.leading ,90)
        }
                        
        
        }
    }
                
            }
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
