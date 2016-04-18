//var Redux = require ('redux');
//import Redux from 'redux';
import { createStore } from 'redux';
import todoApp from './reducers';

//TODO: Why do I need to name the file as *.jsx ?
let store = createStore(todoApp);
