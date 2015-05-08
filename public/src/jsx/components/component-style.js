var links = require('./navigation.jsx')

module.exports = {
	capture: {
		position: 'fixed'
		, top: 0
		, height: '100%'
		, width: '100%'
		, background: 'none'
	}
	, nav: {
		position: 'absolute'
		, top: 700
		, width: '100%'
		, textAlign: 'center'
    , transition: 'opacity .5s'
    , transition: 'all .5s'
	}
	, navFixed: {
		position: 'fixed'
		, top: 0
		, margin: '0 auto auto'
		, width: '100%'
		, textAlign: 'center'
	}
}
