module.exports = function(grunt) {
  grunt.initConfig({
    browserify: {
      options: {
        transform: [ require("grunt-react").browserify ]
      },
      app: {
        src: "public/src/jsx/application.jsx",
        dest: "app/assets/javascripts/images.js"
      }
    },
    watch: {
      files: ["./src/**/*"],
      tasks: ["browserify"],
    },
  });

  grunt.loadNpmTasks("grunt-contrib-watch");
  grunt.loadNpmTasks("grunt-browserify");
  grunt.loadNpmTasks("grunt-react");

  grunt.event.on("watch", function(action, filepath, target) {
    grunt.log.writeln(target + ": " + filepath + " has " + action);
  });
};
