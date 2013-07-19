'use strict';

exports.description = 'Bacon.js plugin template';

exports.notes = '';

exports.warnOn = '*';

exports.template = function(grunt, init, done) {

    init.process({}, [
        // Prompt for these values.
        init.prompt('name'),
        init.prompt('version', '1.0.0'),
        init.prompt('description')
        ],
        function(err, props) {
          var files = init.filesToCopy(props);

          // Actually copy (and process) files.
          init.copyAndProcess(files, props);

          // All done!
          done();
        }
    )
};