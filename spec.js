/* global describe, beforeEach, afterEach, it, console, browser, element, expect
 */

describe('Protractor Demo App', function () {
/*  beforeEach(function (done) {
    console.log('beforeEach');
    console.log('browser.params.proxy', browser.params.proxy);
    console.log('browser.params.proxyData', browser.params.proxyData);
    browser.params.proxy.startHAR(browser.params.proxyData.port, 'test', done);
  });

  afterEach(function (done) {
    console.log('afterEach');
    browser.params.proxy.getHAR(browser.params.proxyData.port, function (err, harData) {
      console.log('harData', harData);
      done();
    });
  });
*/


  it('should have a title', function() {
    browser.get('http://juliemr.github.io/protractor-demo/');
    console.log("Loaded: ", browser.getTitle());
    expect(browser.getTitle()).toEqual('Super Calculator');
  });


});
