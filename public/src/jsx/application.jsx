var React = require('react')
    , http = require('http')
    , Carousel = require('nuka-carousel')
    , key = 0
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
            {"<"}
          </a>
          <a id={"next-slide-" + key} className="next-slide"
            href="#"
            onClick={this.props.nextSlide}>
            {">"}
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
    return (
      <div key={this.props.title} className="gallery-slider">
        <div className="event-title">{this.props.title}</div>
        <Carousel slidesToShow={4}>
          {photos}
        </Carousel>
      </div>
    )
  }
});

function renderPhotos(data) {
  for (var n = 0; n < data.length; n++) {
    for (var i = 0; i < data[n].length; i++) {
      var photo = data[n][i]
        , source = "https://farm" + photo["farm"] + ".staticflickr.com/" + photo["server"] + "/" + photo["id"] + "_" + photo["secret"] + ".jpg";
      photos.push(<img className="gallery-image" src={source} />)
    }
    React.render(
      <div id={"gallery-" + data[n][0]["id"]}>
        <Gallery key={key++} title={data[n][0]["title"]} />
      </div>,
      document.getElementById('gallery-anchor-' + data[n][0]["id"])
    );
    photos = [];
  }
}
