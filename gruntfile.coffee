module.exports = (grunt) ->

  grunt.loadNpmTasks 'grunt-mocha-cov'

  grunt.registerTask 'test',            [ 'mochacov:spec' ]

  grunt.initConfig
    src:
      js:           [ 'src/**/*.js' ] 
      spec:         [ 'test/**/*.spec.js' ]

    mochacov:
      spec:
        options:
          files:    [ '<%= src.spec %>' ]
          reporter: 'spec'
