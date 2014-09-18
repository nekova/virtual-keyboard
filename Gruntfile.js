module.exports = function(grunt) {

    grunt.initConfig({
        'gh-pages': {
            options: {
                clone: '.gh-pages',
                base: 'build/web'
            },
            src: [
                '*',
                'packages/**/*'
            ]
        }
    });

    grunt.loadNpmTasks('grunt-gh-pages');

    grunt.registerTask('deploy', ['gh-pages']);
};
