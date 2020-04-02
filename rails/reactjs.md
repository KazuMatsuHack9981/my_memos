# React.js



## titles
* very basic
* declaration of component
* using the component
* parameter
* method of the createClass class
	* getInitialState
	* componentDidMount
* class/functinal component



***



## very basic
note that you have to transform this into javascript format by  
using such as `JSXTransformer.js`.
```
return (
  <div className="commentForm">
    Hello, world! I am a CommentForm.
  </div>
);
```
this is not HTML but is "JSX".



***



## declaration of component
```
var CommentBox = React.createClass({
  render: function() {
    return (
      <div className="commentBox"> // … ①
        Hello, world! I am a CommentBox.
      </div>
    );
  }
});
```
remember that inside is NOT HTML, it's "JSX".
Also, you cannot write multiple div inside.



***



## using the component
```
React.render(
  <CommentBox />,
  document.getElementById('content')
);
```



***



## parameter
give parameter like the code below.
```
var CommentList = React.createClass({
  render: function() {
    return (
      <div className="commentList">
        <Comment author="Pete Hunt">This is one comment</Comment>
        <Comment author="Jordan Walke">This is *another* comment</Comment>
      </div>
    );
  }
});
```
`author` is the parameter given to the component "Comment".  

use parameter like the code below.  
```
var Comment = React.createClass({
  render: function() {
    return (
      <div className="comment">
        <h2 className="commentAuthor">
          {this.props.author}
        </h2>
        {this.props.children}
      </div>
    );
  }
});
```
`this.props.author` is the value such as `"Pete Hunt"` and so.  
`this.props.children` is the value which is inside `<Comment>` tag.  
Remember that the string inside the `<Comment>` tag is not javascript string.  
To use as the javascript string add `toString()` at the end of `this.props.children`.



***



## method of the createClass class

### getInitialState
called when the component is initialized.

### componentDidMount
called once in the first call of the `render`.



***



## concat
javascript method. combine array items.
```
const array1 = ['a', 'b', 'c'];
const array2 = ['d', 'e', 'f'];
const array3 = array1.concat(array2);

console.log(array3);
// expected output: Array ["a", "b", "c", "d", "e", "f"]
```



***



## class/functinal component

### functinal component
```
function Welcome(props) {
  return <h1>Hello, {props.name}</h1>;
}
```

### class component
```
class Welcome extends React.Component {
  render() {
    return <h1>Hello, {this.props.name}</h1>;
  }
}
```



***



## props
there is something called React factor which describe DOM tag as follows.
```
const element = <div />;
```
but, this also can give user defined component like below.
```
function Welcome(props) {  return <h1>Hello, {props.name}</h1>;
}

const element = <Welcome name="Sara" />;
```
in this code, `name` will be props given to the functinal component `Welcome`.  
also, props value cannot be changed.



***



## state
```
class Clock extends React.Component {
  constructor(props) {    super(props);    this.state = {date: new Date()};  }
  render() {
    return (
      <div>
        <h1>Hello, world!</h1>
        <h2>It is {this.state.date.toLocaleTimeString()}.</h2>      </div>
    );
  }
}

ReactDOM.render(
  <Clock />,  document.getElementById('root')
);
```
state is a Component's private class variable.



***



## lifecycle

### 3 lifecycle
there are three lifecycle which is below.
*	Mounting  
	before component get rendered to users.
*	Updating  
	when component is rendered. while users enabled to use that component.
*	Unmounting  
	when component is moving to the next component. this is the time to delete current component.

### lifecycle method
```
class Clock extends React.Component {
  constructor(props) {
    super(props);
    this.state = {date: new Date()};
  }

  componentDidMount() {
    this.timerID = setInterval(
      () => this.tick(),
      1000
    );
  }

  componentWillUnmount() {
    clearInterval(this.timerID);
  }

  tick() {    this.setState({      date: new Date()    });  }
  render() {
    return (
      <div>
        <h1>Hello, world!</h1>
        <h2>It is {this.state.date.toLocaleTimeString()}.</h2>
      </div>
    );
  }
}
```



***



## setState()
don't assign state value directly as follows.  
this component will not be rerendered.
```
// Wrong
this.state.comment = 'Hello';
```
instead, use 
```
// Correct
this.setState({comment: 'Hello'});
```
the only place you can assign values directly to `this.state` is in  
the constructor.



***



## summarize setState()
`this.props` and `this.state` update is done unsynchronized.  
Therefore, it is required to summarize in one setState().
```
// Wrong
this.setState({
  counter: this.state.counter + this.props.increment,
});
```
```
// Correct
this.setState(function(state, props) {
  return {
    counter: state.counter + props.increment
  };
});
```
Also, you can use arrow operator as follows.
```
// Correct
this.setState((state, props) => ({
  counter: state.counter + props.increment
}));
```
