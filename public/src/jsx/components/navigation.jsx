var React = require('react')
	, key = 0;

var NavContainer = React.createClass({
	getInitialState: function() {
		return {
			position: window.pageYOffset
		}
	},
	handleScroll: function() {
		this.setState({position: window.pageYOffset});
  },
	componentDidMount: function() {
    document.addEventListener('scroll', this.handleScroll);
  },
  componentWillUnmount: function() {
    document.removeEventListener('scroll', this.handleScroll);
  },
	shouldComponentUpdate: function() {
		return window.pageYOffset != this.props.position
	}
	, render: function() {
		var navClass = 'navigation'
		if (window.pageYOffset > this.props.position) {
			navClass = 'navigation-fixed'
		} else {
			navClass = 'navigation'
		}
		return (
			<div key={key++} ref="nav">
				<form action="https://www.paypal.com/cgi-bin/webscr" method="post" target="_top">
					<input type="hidden" name="cmd" value="_s-xclick" />
					<input type="hidden" name="hosted_button_id" value="T3RFM3GSNMMJG" />
					<input id="donate" type="submit" border="0" value="Donate" name="donate" alt="PayPal - The safer, easier way to pay online!" />
				</form>
				<nav className={navClass}>
					{this.props.children}
				</nav>
			</div>
		)
	}
})

module.exports = NavContainer;
