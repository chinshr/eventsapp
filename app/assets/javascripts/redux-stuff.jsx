var Redux = require ('redux');
var todoApp = require ('./reducers');

//TODO: Why do I need to name the file as *.jsx ?

let store = Redux.createStore(todoApp);
