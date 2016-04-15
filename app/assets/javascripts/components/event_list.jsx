
var EventItem = require ('./event_item');

const EventList = ({data}) => {

  const eventNodes = data.map(function(event) {
    return (
      <EventItem name={event.name} description={event.description} key={event.id}>
        {event.note}
      </EventItem>
    );
  });

  return (
    <div className="eventList">
      {eventNodes}
    </div>
  )
};

module.exports = EventList;
