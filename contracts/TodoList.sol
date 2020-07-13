// SPDX-License-Identifier: MIT
pragma solidity >=0.4.21 <0.7.0;

/// Create Smart Contract That will manage the TodoList.

 contract TodoList { 
    uint public taskCount= 0;
   
    struct Task{
    uint id;
    string content;
    bool completed; 
} 
 mapping(uint => Task) public tasks;
   
   event TaskCreated(
       uint id,
       string content,
       bool completed
   );
  constructor() public{
      createTask("Checkout");
  }
  function createTask(string memory _content) public{
      taskCount ++;
      tasks[taskCount] = Task(taskCount, _content, false);
      emit TaskCreated(taskCount, _content, false);
  }
  
}
