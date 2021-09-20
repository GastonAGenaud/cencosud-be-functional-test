const {Given, When, Then, AfterAll, After, And} = require('cucumber');
const assert = require('assert').strict
const restHelper = require('../util/restHelper');
const {makeid} = require('../util/util');

Given('A request {}', function (request) {
    console.log(JSON.parse(request));
    this.context['request'] = JSON.parse(request);
});
Given('A request', function () {
});

When('I send POST request to Metro {}', async function (path) {
    this.context['response'] = await restHelper.postData(`${process.env.SERVICE_URL_METRO}${path}`, this.context['request']);
});

When('I send GET request to Wong {}', async function (path) {
    if (path.includes("recommendations")) {
    this.context['response'] = await restHelper.getData(`${process.env.SERVICE_URL_WONG_DEV}${path}`);
    }
    else{
        this.context['response'] = await restHelper.getData(`${process.env.SERVICE_URL_WONG}${path}`);
    }
});

When('I send PUT request to Wong {}', async function (path) {
    this.context['response'] = await restHelper.putData(`${process.env.SERVICE_URL_WONG}${path}`, this.context['request']);

});

When('I send GET request to Metro {}', async function (path) {
    this.context['response'] = await restHelper.getData(`${process.env.SERVICE_URL_METRO}${path}`);
});

When('I send GET request to Icons Categories library {}', async function (path) {
    this.context['response'] = await restHelper.getData(`${process.env.SERVICE_ICON_URL}${path}`);
});

Then('I get response code {int}', async function (code) {
    assert.equal(this.context['response'].status, code);
});

