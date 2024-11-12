# Pin npm packages by running ./bin/importmap

pin "application"
pin "@hotwired/turbo-rails", to: "turbo.min.js"
pin "@hotwired/stimulus", to: "stimulus.min.js"
pin "@hotwired/stimulus-loading", to: "stimulus-loading.js"
pin_all_from "app/javascript/controllers", under: "controllers"
pin "jkanban", to: "https://ga.jspm.io/npm:jkanban@1.3.1/jkanban.js" # @1.3.1
pin "atoa", to: "https://ga.jspm.io/npm:atoa@1.0.0/atoa.js" # @1.0.0
pin "contra/emitter", to: "https://ga.jspm.io/npm:contra@1.9.4/emitter.js" # @1.9.4
pin "crossvent", to: "https://ga.jspm.io/npm:crossvent@1.5.5/src/crossvent.js" # @1.5.5
pin "custom-event", to: "https://ga.jspm.io/npm:custom-event@1.0.1/index.js" # @1.0.1
pin "dragula", to: "https://ga.jspm.io/npm:dragula@3.7.3/dragula.js" # @3.7.3
pin "process", to: "https://ga.jspm.io/npm:@jspm/core@2.1.0/nodelibs/browser/process-production.js" # @2.1.0
pin "ticky", to: "https://ga.jspm.io/npm:ticky@1.0.1/ticky-browser.js" # @1.0.1
pin "axios", to: "https://ga.jspm.io/npm:axios@1.7.7/index.js" # @1.7.7
pin "#lib/adapters/http.js", to: "https://ga.jspm.io/npm:axios@1.7.7/lib/helpers/null.js" # @1.7.7
pin "#lib/platform/node/classes/FormData.js", to: "https://ga.jspm.io/npm:axios@1.7.7/lib/helpers/null.js" # @1.7.7
pin "#lib/platform/node/index.js", to: "https://ga.jspm.io/npm:axios@1.7.7/lib/platform/browser/index.js" # @1.7.7
pin "lodash-es", to: "https://ga.jspm.io/npm:lodash-es@4.17.21/lodash.js" # @4.17.21
pin "flowbite", to: "https://cdn.jsdelivr.net/npm/flowbite@2.5.2/dist/flowbite.turbo.min.js" # @2.5.2
pin "@popperjs/core", to: "https://ga.jspm.io/npm:@popperjs/core@2.11.8/lib/index.js" # @2.11.8
pin "flowbite-datepicker", to: "https://ga.jspm.io/npm:flowbite-datepicker@1.3.0/dist/main.esm.js" # @1.3.0
