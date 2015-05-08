var React = require('react')
    , NavContainer = require('./components/navigation.jsx')
    , http = require('http')
    , Carousel = require('nuka-carousel')
    , key = 0
    , photos = [];

var links = {
    "/": "<i class='fa fa-home'></i> Home"
    , "/our-story": "<i class='fa fa-users'></i> Our Story"
    , "/our-services": "<i class='fa fa-bed'></i> Services"
    , "/events": "<i class='fa fa-calendar'></i> Events"
    , "/support-us": "<i class='fa fa-heart'></i> Support Us"
    , "/community_resources": "<i class='fa fa-book'></i> Community Resources"
    , "/media": "<i class='fa fa-newspaper-o'></i> Media"
    , "/contact-us": "<i class='fa fa-comments'></i> Contact Us"
}

React.render(
    <NavContainer links={links} position={380} />
    , document.getElementById('navigation-anchor')
);

if (document.getElementById('events')) {
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

  var Gallery = React.createClass({
    mixins: [Carousel.ControllerMixin],
    render() {
      return (
        <div key={this.props.title} className="gallery-slider">
          <div className="event-title">{this.props.title}</div>
          <Carousel slidesToShow={3}>
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
}
