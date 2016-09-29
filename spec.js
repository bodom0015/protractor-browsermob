/* global describe, beforeEach, afterEach, it, console, browser, element, expect
 */

describe('Labs Workbench', function () {
 beforeEach(function (done) {
    console.log('beforeEach');
    // console.log('browser.params.proxy', browser.params.proxy);
    // console.log('browser.params.proxyData', browser.params.proxyData);
//    browser.params.proxy.startHAR(browser.params.proxyData.port, 'workbench', done);
  });

  afterEach(function (done) {
    console.log('afterEach');
//    browser.params.proxy.getHAR(browser.params.proxyData.port, function (err, harData) {
//      console.log('harData', harData);
      done();
//    });
  });

  it('should have a title', function() {
//    browser.get('https://www.angularjs.org/');
//    expect(browser.getTitle()).toEqual('AngularJS — Superheroic JavaScript MVW Framework');
    console.log('Starting test');

    browser.get('https://www.test.nationaldataservice.org/#/');
    expect(browser.getTitle()).toEqual('Labs Workbench Landing Page'); 

    console.log("Loaded: ", browser.getTitle());
  });
});
