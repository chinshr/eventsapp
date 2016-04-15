var EventList = require ('./event_list');

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
}

module.exports = EventBox;