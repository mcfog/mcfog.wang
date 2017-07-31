const gulp = require('gulp');
const less = require('gulp-less');

gulp.task('css', function () {
    return gulp.src('less/*.less')
        .pipe(less())
        .pipe(gulp.dest('public/css'))
});
gulp.task('watch', function () {
    return gulp.watch('less/*.less', ['css']);
});

gulp.task('default', ['css']);
