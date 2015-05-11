var React = require('react')
    , NavContainer = require('./components/navigation.jsx')
    , http = require('http')
    , Carousel = require('nuka-carousel')
    , key = 0
    , photos = [];

React.render(
    <NavContainer position={400}>
    <ul>
      <li><a className="nav-link" href="/"><i className="fa fa-home"></i>Home</a></li>
      <li><a className="nav-link" href="/our-story"><i className="fa fa-users"></i>Our Story</a></li>
      <li><a className="nav-link" href="/our-services"><i className="fa fa-bed"></i>Our Services</a></li>
      <li><a className="nav-link" href="/events"><i className="fa fa-calendar"></i>Our Events</a></li>
      <li><a className="nav-link" href="/support-us"><i className="fa fa-heart"></i>Support Us</a></li>
      <li><a className="nav-link" href="/community_resources"><i className="fa fa-book"></i>Community Resources</a></li>
      <li><a className="nav-link" href="/media"><i className="fa fa-newspaper-o"></i>Media</a></li>
      <li><a className="nav-link" href="/contact-us"><i className="fa fa-comments"></i>Contact Us</a></li>
    </ul>
    </NavContainer>
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
