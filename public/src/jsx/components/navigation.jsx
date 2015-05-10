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
				<nav className={navClass}>
					{this.props.children}
				</nav>
			</div>
		)
	}
})

module.exports = NavContainer;
