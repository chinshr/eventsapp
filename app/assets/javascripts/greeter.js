function hello(name) {
  console.log('Hello, ' + name + '!');
}

function goodbye(name) {
  console.log('Goodbye, ' + name + '!');
}

module.exports = {
  sayHello: hello,
  sayGoodbye: goodbye
};
