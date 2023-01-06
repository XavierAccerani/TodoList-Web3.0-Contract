pragma solidity ^0.8.0;

contract Todos {
    string[] public todos;

    function setTodo(string memory _todo) public {
        todos.push(_todo);
    }

    function getTodo() public view returns (string[] memory) {
        return todos;
    }

    function getTodosLength() public view returns (uint256) {
        uint256 todosLength = todos.length;
        return todosLength;
    }

    function deleteTodo(uint256 _index) public {
        require(_index < todos.length, "todo index doesn't exist");
        todos[_index] = todos[getTodosLength() - 1];
        todos.pop();
    }
}
