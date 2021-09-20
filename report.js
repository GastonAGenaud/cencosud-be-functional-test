const reporter = require('cucumber-html-reporter');

const options = {
    theme: 'bootstrap',
    jsonFile: './cucumber.json',
    output: 'test/report/cucumber_report.html',
    reportSuiteAsScenarios: true,
    scenarioTimestamp: true,
    launchReport: true,
    name:'Automation for API REST CENCOSUD - WONG AT CODERIO',
    brandTitle:'REST API Test',
    metadata: {
        "App Version":"0.3.2",
        "Test Environment": "QA",
        "Browser": "Chrome  54.0.2840.98",
        "Platform": "Lenovo",
        "Parallel": "Scenarios",
        "Executed": "Remote"
    }
};

reporter.generate(options);
    