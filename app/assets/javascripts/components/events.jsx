class EventBox extends React.Component {
  constructor(props) {
    super(props);

    this.state = {
      data: this.props.data
    }
  }
  render() {
    console.log('this.props...', this.props);
    return (
      <div className="eventBox">
        <h1>Events</h1>
        <EventList data={this.state.data} />
      </div>
    );
  }
};

const EventList = ({data}) => {

  const eventNodes = data.map(function(event) {
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
};

const Event = (props) => {
  return (
    <div className="event">
      <h2 className="eventName">
        {props.name}
      </h2>
      <p>
        {props.description}
      </p>
      <p>Note? {props.children}</p>
    </div>

  )
};
