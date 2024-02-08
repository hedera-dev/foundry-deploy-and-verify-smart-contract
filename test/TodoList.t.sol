// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import "forge-std/Test.sol";
import "src/TodoList.sol";

contract TodoListTest is Test {
        TodoList public todoList =
        TodoList(0xC08d3Cf01739C713BaD1cf65FD4127CB90550568);

    function test_createTodo_returnsNumberOfTodosIncrementedByOne() public {
        // get the current number of todos
        uint256 numberOfTodos = todoList.getNumberOfTodos();

        // create a new todo and save the number of todos
        uint256 todoCountAfterCreate = todoList.createTodo(
            "A new todo for you!"
        );

        assertEq(todoCountAfterCreate, (numberOfTodos + 1));
    }
}
