gulp = require('gulp')
sass = require('gulp-ruby-sass')
autoprefixer = require('gulp-autoprefixer')
broeserSync = require('browser-sync');

gulp.task 'browser-sync', ['rebuild'], ->
  broeserSync({
    server: {
      baseDir: './'
    },
    port: 8080,
    host: "0.0.0.0"
  })

gulp.task 'rebuild', ->
  broeserSync.reload()

gulp.task 'watch', ->
  gulp.watch(['**/*.html'], ['rebuild'])

gulp.task 'default', ['browser-sync', 'watch']