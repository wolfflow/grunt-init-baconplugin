module.exports = (grunt) ->
  version = grunt.file.readJSON("package.json").version
  
  grunt.initConfig
    coffee:
      main:
        files:
          "{%= name %}.js": "{%= name %}.coffee"
          
  grunt.loadNpmTasks "grunt-contrib-coffee"
  grunt.registerTask "default", ["coffee"]