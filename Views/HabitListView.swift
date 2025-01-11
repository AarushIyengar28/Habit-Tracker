
import SwiftUI

struct HabitListView: View {
    var body: some View {
        VStack (alignment: .leading, spacing: 30) {
            //Motivational Header
            Text("Lets Strive For Greatness!\nYou can do it!")
                .font(.title)
                .fontWeight(.bold)
            //Todays Date
            
            VStack (alignment: .leading, spacing: 5){
                
                Text("January 10 2025")
                    .font(.title2)
                    .fontWeight(.semibold)
                    .foregroundStyle(.cyan)
                //List Streak
                Text("🔥1 day streak")
                    .font(.title3)
            }

 
            //Habit List
            
            //Button
            Button(action: {
                
            }, label: {
                HStack (alignment: .center, spacing: 15){
                    //Emoji
                    Text("🧘")
                        .font(Font.system(size: 60))
                        .padding(.leading)
                    //Habit Description (Title, description, streak)
                    VStack (alignment: .leading) {
                        Text("Habit Title")
                            .foregroundStyle(.orange)
                            .font(.title2)
                            .fontWeight(.semibold)
                        
                        Text("Habit Description")
                            .foregroundStyle(Color(.label))
                            .font(.subheadline)
                            
                        Text("1 day streak")
                            .foregroundStyle(Color(.label))
                            .font(.subheadline)
                    }
                    
                    Spacer()
                    
                    Image(systemName: "checkmark.circle.fill")
                        .font(Font.system(size: 50))
                        .foregroundStyle(.orange)
                        .padding(.trailing)
                }
                .padding()
                .background(Color(.systemBackground))
                .cornerRadius(15)
                .shadow(color: Color(.systemGray), radius: 3)
            })

            
            // Add Habit Button
            HStack{
                Spacer()
                Button(action: {}, label: {
                Image(systemName: "plus.circle.fill")
                        .font(Font.system(size: 40))
                        .foregroundStyle(.orange)
                })
            }
            Spacer()
        }
        .padding()
    }
}
