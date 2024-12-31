import SwiftUI

struct TaskItem: Identifiable {
    let id = UUID()
    let name: String
    let systemImage: String
    
    // Array of SF Symbols to randomly choose from
    static let randomImages = ["star.fill", "heart.fill", "bell.fill", "bookmark.fill",
                             "flag.fill", "tag.fill", "checkmark.circle.fill", "leaf.fill"]
}

struct FeedView: View {
    @State private var allTasks: [TaskItem] = []
    @State private var taskName: String = ""
    
    var body: some View {
        VStack {
            HStack {
                TextField("Task name", text: $taskName)
                    .font(.subheadline)
                    .padding(12)
                    .background(Color(.systemGray6))
                    .cornerRadius(10)
                
                Button("Add") {
                    // Get random system image from the array
                    let randomImage = TaskItem.randomImages.randomElement() ?? "circle.fill"
                    let newTask = TaskItem(name: taskName, systemImage: randomImage)
                    allTasks.append(newTask)
                    taskName = ""
                }
                .font(.subheadline)
                .fontWeight(.semibold)
                .frame(width: 60, height: 44)
                .foregroundColor(.white)
                .background(.black)
                .cornerRadius(8)
                .padding(.vertical, 20)
            }
            .padding(.horizontal, 20)
            .padding(.top, 20)
            
            List(allTasks) { task in
                HStack {
                    Image(systemName: task.systemImage)
                        .foregroundColor(.blue)
                    Text(task.name)
                        .font(.subheadline)
                }
            }
        }
    }
}

#Preview {
    FeedView()
}
