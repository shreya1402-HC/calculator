<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Simple Calculator</title>
<style>
body {
    font-family: sans-serif;
    background-color: #f0f0f0; /* Light gray background */
    display: flex;
    justify-content: center;
    align-items: center;
    min-height: 100vh;
    margin: 0; /* Remove default margins */
}

.calculator {
    background-color: #fff; /* White calculator body */
    border-radius: 8px;
    box-shadow: 0 2px 5px rgba(0, 0, 0, 0.2);
    padding: 20px;
    width: 300px; /* Adjust width as needed */
}

.display {
    background-color: #eee; /* Light gray display */
    border: 1px solid #ccc;
    border-radius: 4px;
    padding: 10px;
    margin-bottom: 10px;
    text-align: right;
    font-size: 20px;
    overflow: hidden; /* Prevent text overflow */
    white-space: nowrap;  /* prevent line breaks */
}

.buttons {
    display: grid;
    grid-template-columns: repeat(4, 1fr); /* 4 equal columns */
    grid-gap: 8px;
}

button {
    padding: 15px; /* Larger buttons */
    border: none;
    border-radius: 4px;
    background-color: #ddd; /* Light gray buttons */
    cursor: pointer;
    font-size: 16px;
    transition: background-color 0.3s; /* Smooth transition on hover */
}

button:hover {
    background-color: #ccc; /* Darker gray on hover */
}

.operator {
    background-color: #f0ad4e; /* Orange for operators */
    color: white;
}

.operator:hover {
    background-color: #e09d3f; /* Darker orange on hover */
}

.equal {
    background-color: #5cb85c; /* Green for equals */
    color: white;
}

.equal:hover {
    background-color: #4cae4c; /* Darker green on hover */
}

</style>
</head>
<body>

<div class="calculator">
    <div class="display" id="display">0</div>
    <div class="buttons">
        <button onclick="appendToDisplay('7')">7</button>
        <button onclick="appendToDisplay('8')">8</button>
        <button onclick="appendToDisplay('9')">9</button>
        <button class="operator" onclick="appendToDisplay('+')">+</button>
        <button onclick="appendToDisplay('4')">4</button>
        <button onclick="appendToDisplay('5')">5</button>
        <button onclick="appendToDisplay('6')">6</button>
        <button class="operator" onclick="appendToDisplay('-')">-</button>
        <button onclick="appendToDisplay('1')">1</button>
        <button onclick="appendToDisplay('2')">2</button>
        <button onclick="appendToDisplay('3')">3</button>
        <button class="operator" onclick="appendToDisplay('*')">*</button>
        <button onclick="appendToDisplay('0')">0</button>
        <button onclick="appendToDisplay('.')">.</button>
        <button class="equal" onclick="calculate()">=</button>
        <button class="operator" onclick="appendToDisplay('/')">/</button>
        <button onclick="clearDisplay()">C</button>  </div>
</div>

<script>
let display = document.getElementById('display');

function appendToDisplay(value) {
    if (display.textContent === '0' && value !== '.') {
        display.textContent = value;
    } else {
        display.textContent += value;
    }
}

function calculate() {
    try {
        display.textContent = eval(display.textContent); // Use eval carefully!
    } catch (error) {
        display.textContent = 'Error';
    }
}

function clearDisplay() {
    display.textContent = '0';
}

</script>

</body>
</html>