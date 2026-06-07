const { defineConfig } = require("cypress");

module.exports = defineConfig({
  allowCypressEnv: false,

  projectId: "i2faer",
  video: true,

  e2e: {
    baseUrl: "http://localhost:5500",

    setupNodeEvents(on, config) {
      // implement node event listeners here
    },
  },
});
