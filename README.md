# Protractor + BrowserMob
Experimenting with:
* [Docker](https://www.docker.com/)
* [Protractor](http://www.protractortest.org/#/)
* [Selenium](http://docs.seleniumhq.org/)
* [BrowserMob Proxy](https://bmp.lightbody.net/)

# Prerequisites
* This doesn't behave well on Windows machines. Windows Users: Use at your own risk.
* Install [Docker](https://www.docker.com/)

# Getting Started
* Modify `protractor.conf.js` for your desired browsers / options
* Modify spec for your load test
* `docker run -it --rm -v `pwd`:/project -w /project bodom0015/protractor npm test`

Docker should now run your test inside of a container with the following packages:
** Node.js
** NPM
** Protractor
** Selenium WebDrivers (runs as a service)
** Coming soon: BrowserMob Proxy (will run as a service)

