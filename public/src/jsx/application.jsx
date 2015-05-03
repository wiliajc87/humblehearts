var React = require('react')
    , http = require('http')
    , Carousel = require('nuka-carousel')
    , key = 0
    , anchorId = 0
    , photos = [];

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
    var src = this.props.event
    return (
      <div>
        <div id="event-title">{this.props.event}</div>
        <Carousel decorators={Decorators} key={key++} slidesToShow={6}>
          {photos}
        </Carousel>
      </div>
    )
  }
});

function renderPhotos(data) {
  for (var i = 0; i < data.length; i++) {
    photos.push(<img src={data[i]["src"]} />)
    anchorId++
    React.render(
      <div>
        <div>{data[0]["title"]}</div>
        <Gallery key={key++} />
      </div>,
      document.getElementById('gallery-anchor-' + data[i]["id"])
    );
  }
}
