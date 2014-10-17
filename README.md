mediatorjs
==========

Simple mediator pattern written in JS

mediator is a singleton. It is instantiated as soon as you require it and
should remain alive as long as your app does. It is derived from marionette's
wreqr, but we found a lot of trouble with circular dependencies while it was
pre-packaged.

API
----

    var mediator = require('mediatorjs');

    // get and set for pseudo dependency injection
    mediator.set('hello', 1);
    mediator.get('hello'); // results in 1

    // trigger
    mediator.on('blah', function(data) {});
    mediator.trigger('blah', {});
