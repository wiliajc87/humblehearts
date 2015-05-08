var React = require('react')
		, componentStyle = require('./component-style')

var NavContainer = React.createClass({
	getInitialState: function() {
		return {
			position: document.body.scrollTop
		}
	}
	, componentDidMount: function() {
		this.setState({height: this.refs.capt.getDOMNode().offsetWidth})
	}
	, handleWheel: function(e) {
		this.setState({position: document.body.scrollTop})
	}
	, render: function() {
		var self = this
			, links = this.props.links
			, keys = Object.keys(this.props.links)
			, labels = keys.map(function(label) {
				return (
					<li style={document.body.scrollTop > self.props.position ? componentStyle.listFixed : componentStyle.list}
							key={label}
							className="nav-link">
						<a href={label}
							 className={"nav-link"}
							 dangerouslySetInnerHTML={{__html: links[label]}}>
						</a>
					</li>
				);
			});
		return (
			<div>
				<form id="donate" action="https://www.paypal.com/cgi-bin/webscr" method="post" target="_top">
					<input type="hidden" name="cmd" value="_s-xclick" />
					<input type="hidden" name="hosted_button_id" value="T3RFM3GSNMMJG" />
					<input type="image" src="https://farm8.staticflickr.com/7726/16729045044_2e415e5064_o.png" width="150px" border="0" name="submit" alt="PayPal - The safer, easier way to pay online!" />
				</form>
				<div id="capture-wheel"
						 ref="capt"
						 onWheelCapture={this.handleWheel.bind(this)}
						 style={componentStyle.capture}>
				</div>
				<nav style={document.body.scrollTop > this.props.position ? componentStyle.navFixed : componentStyle.nav}>
					<ul>{labels}</ul>
				</nav>
			</div>
		)
	}
})

module.exports = NavContainer
