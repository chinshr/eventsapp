//= require_tree ./components

// If the component is used in the erb file, it needs to be global on the window object.
// Put all of our top-level react components that are generated through the react-rails helper here.

window.EventBox = require('./components/event_box');