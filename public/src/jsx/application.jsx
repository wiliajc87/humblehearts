var React = require('react')
    , Carousel = require('nuka-carousel')
    , key = 0
    , anchorId = 0

var events =
  [{"title":"boop",
  "photos": [
    <img key={key++} src="http://nebula.wsimg.com/b0e9b01b8c752c727f6ae2a166a02cfc?AccessKeyId=D8959FC4FA6F24CE3A19&disposition=0&alloworigin=1" />,
    <img key={key++} src="http://nebula.wsimg.com/9961018a3f97122344f4bfe08e2ed9fa?AccessKeyId=D8959FC4FA6F24CE3A19&disposition=0&alloworigin=1" />,
    <img key={key++} src="http://nebula.wsimg.com/34d576ca3605458bb67da77ed41676b3?AccessKeyId=D8959FC4FA6F24CE3A19&disposition=0&alloworigin=1" />,
    <img key={key++} src="http://placehold.it/1000x400/ffffff/c0392b/&text=slide4" />,
    <img key={key++} src="http://placehold.it/1000x400/ffffff/c0392b/&text=slide5" />,
    <img key={key++} src="http://placehold.it/1000x400/ffffff/c0392b/&text=slide6" />
  ]},
  {"title":"foobar",
  "photos": [
    <img key={key++} src="http://nebula.wsimg.com/b0e9b01b8c752c727f6ae2a166a02cfc?AccessKeyId=D8959FC4FA6F24CE3A19&disposition=0&alloworigin=1" />,
    <img key={key++} src="http://nebula.wsimg.com/9961018a3f97122344f4bfe08e2ed9fa?AccessKeyId=D8959FC4FA6F24CE3A19&disposition=0&alloworigin=1" />,
    <img key={key++} src="http://nebula.wsimg.com/34d576ca3605458bb67da77ed41676b3?AccessKeyId=D8959FC4FA6F24CE3A19&disposition=0&alloworigin=1" />,
    <img key={key++} src="http://placehold.it/1000x400/ffffff/c0392b/&text=slide4" />,
    <img key={key++} src="http://placehold.it/1000x400/ffffff/c0392b/&text=slide5" />,
    <img key={key++} src="http://placehold.it/1000x400/ffffff/c0392b/&text=slide6" />
  ]},
  {"title":"foobar2",
  "photos": [
    <img key={key++} src="http://nebula.wsimg.com/b0e9b01b8c752c727f6ae2a166a02cfc?AccessKeyId=D8959FC4FA6F24CE3A19&disposition=0&alloworigin=1" />,
    <img key={key++} src="http://nebula.wsimg.com/9961018a3f97122344f4bfe08e2ed9fa?AccessKeyId=D8959FC4FA6F24CE3A19&disposition=0&alloworigin=1" />,
    <img key={key++} src="http://nebula.wsimg.com/34d576ca3605458bb67da77ed41676b3?AccessKeyId=D8959FC4FA6F24CE3A19&disposition=0&alloworigin=1" />,
    <img key={key++} src="http://placehold.it/1000x400/ffffff/c0392b/&text=slide4" />,
    <img key={key++} src="http://placehold.it/1000x400/ffffff/c0392b/&text=slide5" />,
    <img key={key++} src="http://placehold.it/1000x400/ffffff/c0392b/&text=slide6" />
  ]}]

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
    return (
      <Carousel decorators={Decorators} key={key++} slidesToShow={3}>
        {this.props.event["photos"]}
      </Carousel>
    )
  }
});

for (var i = 0; i < events.length; i++) {
  console.log(key)
  React.render(
    <div>event {events[i]["title"]}
      <Gallery key={key++} event={events[i]}>
        <div key={key++} id="events-title">{events[i]["title"]}</div>
      </Gallery>
    </div>,
    document.getElementById('gallery-anchor-' + anchorId)
  );
  anchorId++
}
