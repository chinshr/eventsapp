//var Redux = require ('redux');
import Redux from 'redux';
import todoApp from './reducers';

//TODO: Why do I need to name the file as *.jsx ?

let store = Redux.createStore(todoApp);
