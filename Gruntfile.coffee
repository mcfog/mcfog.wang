
module.exports = (grunt)->

  grunt.loadNpmTasks 'grunt-contrib-watch'
  grunt.loadNpmTasks 'grunt-contrib-less'

  grunt.initConfig 
    less:
      publish: 
        options:
          cleancss: true
        files: [
          expand:  true
          cwd: 'less'
          src: ['*.less']
          dest: 'public/css'
          ext: '.css'
        ]
    watch:
      'less':
        files: ['less/**/*.less'],
        tasks: ['less:publish']
  
  grunt.registerTask 'default', ['less:publish']
