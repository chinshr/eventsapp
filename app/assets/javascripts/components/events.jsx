var EventBox = React.createClass({
  getInitialState: function() {
    return {data: this.props.data}
  },
  render: function() {
    console.log('this.props...', this.props);
    return (
      <div className="eventBox">
        <h1>Events</h1>
        <EventList data={this.state.data} />
      </div>
    );
  }
});

var EventList = React.createClass({
  render: function() {

    var eventNodes = this.props.data.map(function(event) {
      return (
        <Event name={event.name} description={event.description} key={event.id}>
          {event.note}
        </Event>
      );
    });

    return (
      <div className="eventList">
        {eventNodes}
      </div>
    )
  }
});

var Event = React.createClass({
  render: function() {
    return (
      <div className="event">
        <h2 className="eventName">
          {this.props.name}
        </h2>
        <p>
          {this.props.description}
        </p>
        <p>Note? {this.props.children}</p>
      </div>
    )
  }
});

