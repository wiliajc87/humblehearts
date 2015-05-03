var React = require('react')
    , http = require('http')
    , Carousel = require('nuka-carousel')
    , key = 0
    , anchorId = 0

function getPhotos() {
  http.get('/media_api', function(response) {
    response.on('data', function(data) {
      data = JSON.parse(data);
      renderPhotos(data);
    })
  }).on('error', function(error) {
    console.error(error)
  })
}

getPhotos();

var Decorators = [{
  component: React.createClass({
    render() {
      return (
        <div className="photos-carousel">
          <a id={"previous-slide-" + key} className={"previous-slide"}
            href="#"
            onClick={this.props.previousSlide}>
            {"<<"}
          </a>
          <a id={"next-slide-" + key} className="next-slide"
            href="#"
            onClick={this.props.nextSlide}>
            {">>"}
          </a>
        </div>
      )
    }
  }),
  position: 'CenterLeft',
  style: {
    padding: 20
  }
}];

var Gallery = React.createClass({
  mixins: [Carousel.ControllerMixin],
  render() {
    console.log(this.props.event)
    return (
      <Carousel decorators={Decorators} key={key++} slidesToShow={3}>
        <img src={this.props.event} />
      </Carousel>
    )
  }
});

function renderPhotos(data) {
  for (var i = 0; i < data.length; i++) {
    console.log(data[i]["src"])
    React.render(
      <div>{event {data[i]["title"]}
        <div id="event-title">{data[i]["title"]}</div>
        <Gallery event={data[i]["src"]} />
      </div>,
      document.getElementById('gallery-anchor-' + data[i]["id"])
    );
    anchorId++
  }
}
