module.exports = function(grunt) {
  var reactify = require('grunt-react').browserify;

  grunt.initConfig({
    browserify: {
      dev: {
        options: {
          transform: [ reactify ],
          browserifyOptions: {
              extensions: ['.jsx'],
              debug: true
          },
          watch: true,
          keepAlive: true
        },
        files: {
          "public/build/javascripts/precompiled.js": "public/src/jsx/precompiled.jsx"
        }
      },
      prod: {
        files: {
            "public/build/javascripts/precompiled.js": "public/src/jsx/precompiled.jsx"
        },
        options: {
          transform: [reactify],
          browserifyOptions: {
            extensions: ['.jsx']
          }
        }
      }
    }
  });

  grunt.loadNpmTasks("grunt-browserify");

  grunt.event.on("watch", function(action, filepath, target) {
    grunt.log.writeln(target + ": " + filepath + " has " + action);
  });

  grunt.registerTask('default', ['browserify:prod']);
  grunt.registerTask('dev', ['browserify:dev']);
  grunt.registerTask('prod', ['browserify:prod']);
};
