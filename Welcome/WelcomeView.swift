
import SwiftUI

struct WelcomeView: View {
    let screenWidth = UIScreen.main.bounds.width
    let screenHeight = UIScreen.main.bounds.height
    
    var body: some View {
        ZStack {
            // MARK: Background
            ZStack{
                
                Circle()
                    .foregroundStyle(.cyan)
                    .frame(width: 300)
                    .offset(x:-screenWidth / 2 ,y:-screenHeight / 2)
                
                Circle()
                    .foregroundStyle(.green)
                    .frame(width: 350)
                    .offset(x:screenWidth / 3 ,y:screenHeight / 3)
                
                Circle()
                    .foregroundStyle(Color.yellow)
                    .frame(width: 200)
                    .offset(x:screenWidth / 4 ,y:-screenHeight / 4)
                    
            }
            
            
            //MARK: Content
            VStack (alignment: .leading, spacing: 15 ) {
                //App Name
                Text("Habitly")
                    .font(.largeTitle)
                    .fontWeight(.bold)
                
                //Slogan
                Text("The habit tracker that will change your life")
                    .font(.title2)
                    .fontWeight(.semibold)
                
                
                //Get Started
                Button(action:{} , label: {
                    Text("Get Started")
                        .padding()
                        .background(.orange)
                        .fontWeight(.bold)
                        .foregroundStyle(.white)
                        .cornerRadius(15)
                        
                })
                 
                
            }
        }
    }
}

#Preview {
    WelcomeView()
}
