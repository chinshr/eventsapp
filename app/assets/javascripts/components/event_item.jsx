
const EventItem = (props) => {
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
