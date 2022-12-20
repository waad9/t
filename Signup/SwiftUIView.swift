import SwiftUI

struct SwiftUIView: View {
    @State var FullName = ""
    @State var Mobile = ""
    @State var Email = ""
    @State var product : Product
    var body: some View {
//        NavigationView{
            ZStack {
                
                
                
                Text("Edit")
                    .font(.system(size: 30))
                    .fontWeight(.bold)
                    .foregroundColor(Color(red: 0.524, green: 0.651, blue: 0.619))
                    .multilineTextAlignment(.center)
                    .padding(.bottom,590.0)
                
                Text("Edit your account")
                    .font(.system(size: 15))
                    .fontWeight(.regular)
                    .foregroundColor(Color(red: 0.597, green: 0.543, blue: 0.549))
                    .multilineTextAlignment(.center)
                    .padding(.bottom,540.0)
                    .frame( alignment: .leading)
                
                
                
                VStack {
                    
                    RoundedRectangle (cornerRadius: 12.0)
                        .frame(width: 200.0 ,height: 50.0)
                        .foregroundColor(Color(red: 0.947, green: 0.7, blue: 0.39))
                    //.padding(.leading, 4.42)
                        .padding(.top,480.0)
                    
                }
                
                ZStack {
                    
                    
                    Button {
                        print("s")
                    }label: {
                        NavigationLink(destination: Hi(product:product)){
                            Text ("Save")
                                .font(.title)
                                .foregroundColor(Color.white)
                                .padding(.top, 480.0)
                            
                        }
                        
                        
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
                        Text("Full Name :")
                            .frame(width: 200.0)
                            .fontWeight(.semibold)
                            .foregroundColor(Color(red: 0.593, green: 0.539, blue: 0.545))
                            .multilineTextAlignment(.leading)
                            .padding(.top, -230.0)
                            .padding(.trailing, 280.0)
                        
                        
                        Text("Mobile :")
                            .frame(width: 200.0)
                            .fontWeight(.semibold)
                            .foregroundColor(Color(red: 0.593, green: 0.539, blue: 0.545))
                            .multilineTextAlignment(.leading)
                            .padding(.top, -140.0)
                            .padding(.trailing, 300.0)
                        
                        
                        
                        Text("Email :")
                            .frame(width: 200.0)
                            .fontWeight(.semibold)
                            .foregroundColor(Color(red: 0.586, green: 0.531, blue: 0.537))
                            .multilineTextAlignment(.leading)
                            .padding(.top, -55.0)
                        
                            .padding(.trailing, 305.0)
                        
                        
                        
                    }
                    .padding(.leading)
                    
                    
                    
                    .overlay {
                        
                        TextField("Azizah Ahmad ALshami",          text: $FullName)
                            .padding( .bottom, 390.0 )
                            .padding(.leading , 90)
                        
                        
                        
                        
                    }
                }
                
                .overlay {
                    
                    TextField("0509925459 ",    text: $Mobile)
                        .padding( .bottom, 180.0 )
                        .padding(.leading , 90)
                    
                }
                .overlay {
                    
                    TextField(" azizah.alshami@hotmail.com",   text: $Email)
                        .padding( .bottom, -10.0 )
                        .padding(.leading ,90)
                }
                
                
            }
        }
    }
                
//            }
    


struct SwiftUIView_Previews: PreviewProvider {
    static var previews: some View {
        SwiftUIView(product:productList[0])
    }
}
