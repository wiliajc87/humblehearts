"use strict";

var React = require('react')
		, componentStyle = require('./component-style')

class NavContainer extends React.Component {
	constructor(props) {
		super(props);
		this.state = {
			position: document.body.scrollTop
		}
	}
	componentDidMount() {
		this.setState({height: this.refs.capt.getDOMNode().offsetWidth})
	}
	handleWheel(e) {
		this.setState({position: document.body.scrollTop})
	}
	render() {
		console.log(this.props.links)
		var links = this.props.links
			, keys = Object.keys(this.props.links)
			, labels = keys.map(function(label) {
				return (
					<li key={label}
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
}

module.exports = NavContainer
