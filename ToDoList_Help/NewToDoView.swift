//
//  NewToDoView.swift
//  ToDoList_Help
//
//  Created by scholar on 6/19/23.
//

//** This file contains all the code for the "popup" screen where users can add their own ToDo Item**

import SwiftUI

struct NewToDoView: View {
    
    //In Iteration 2, add @Environment here
    
    //Add a State property called title that will hold a String
    
    @State var title : String
    
    //Add a State property called isImportant that will hold a Boolean
    
    @State var isImportant : Bool
    
    //Bind the ToDoItems array here
        //Delete the ToDoItems array binding in iteration 2
    @Binding var toDoItems: [ToDoItem]
    
    //Bind the showNewTask property here
    @Binding var showNewTask : Bool
    
    var body: some View {
        VStack {
            //Add Text View containing "Task title" here
            Text("Task Title")
                .font(.largeTitle)
                .fontWeight(.bold)
                .foregroundColor(Color.blue)
                
            
            
            //Add TextField here with the Text "Enter task description" and binded to the title state property (text: $title)
            
            TextField("Enter the task description", text: $title)
                .border(Color.gray)
                .padding(.all)
            
            //Add Toggle here that is binded to isImportant (isOn: $isImportant) and the text "Is it important?"
            
            Toggle(isOn: $isImportant) {
                Text("Is it important?")
            }
            .padding()
            //Add a padding modifier
            
            //Add Button here, delete any code in the action and with the text "Add"
            
            Button(action: {
                self.showNewTask = false
                self.addTask(title: self.title, isImportant: self.isImportant)
              
            }) {
                Text("Add")
            }
            
            
            //Add a padding modifier
        }
//        .padding(.all)
//        .buttonBorderShape(/*@START_MENU_TOKEN@*//*@PLACEHOLDER=shape: ButtonBorderShape@*/.capsule/*@END_MENU_TOKEN@*/)
//        .buttonStyle(/*@START_MENU_TOKEN@*//*@PLACEHOLDER=Button Style@*/DefaultButtonStyle()/*@END_MENU_TOKEN@*/)
//        .foregroundColor(/*@START_MENU_TOKEN@*/.blue/*@END_MENU_TOKEN@*/)
//        .background()
//            .foregroundColor(/*@START_MENU_TOKEN@*/.black/*@END_MENU_TOKEN@*/)
        
        
        
    }
    //Add the private function addTask here
    
    private func addTask(title: String, isImportant: Bool = false) {
            
            let task = ToDoItem(title: title, isImportant: isImportant)
            toDoItems.append(task)
        }
        //In Iteration 2, update the function to save input to Core Data
}

struct NewToDoView_Previews: PreviewProvider {
    static var previews: some View {
        NewToDoView(title: "", isImportant : false, toDoItems: .constant([]), showNewTask: .constant(true)
                    
                    
            //Add toDoItems: .constant([]) here (Iteration 1)
            //Add showNewTask: .constant(true) (Iteration 1)
            //Delete toDoItems: .constant([]) (Iteration 2_


        )
    }
}
