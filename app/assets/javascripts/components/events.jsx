var Events = React.createClass({
  getInitialState: function() {
    return {data: this.props.data}
  },
  render: function() {
    return (
      <div className="events">
        {this.state.data[0].name}
      </div>
    );
  }
});
