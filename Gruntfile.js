module.exports = function(grunt) {
  grunt.initConfig({
    browserify: {
      options: {
        transform: [ require("grunt-react").browserify ]
      },
      app: {
        src: "src/jsx/application.jsx",
        dest: "assets/javascripts/application.js"
      }
    },
    uglify: {
      my_target: {
        files: {
          "assets/javascripts/application.min.js": "assets/javascripts/application.js"
        }
      }
    },
    watch: {
      files: ["./src/**/*"],
      tasks: ["browserify", "less"],
    },
  });

  grunt.loadNpmTasks("grunt-contrib-watch");
  grunt.loadNpmTasks("grunt-browserify");
  grunt.loadNpmTasks("grunt-react");
  grunt.loadNpmTasks("grunt-contrib-uglify");

  grunt.event.on("watch", function(action, filepath, target) {
    grunt.log.writeln(target + ": " + filepath + " has " + action);
  });
};
