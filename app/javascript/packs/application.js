// This file is automatically compiled by Webpack, along with any other files
// present in this directory. You"re encouraged to place your actual application logic in
// a relevant structure within app/javascript and only use these pack files to reference
// that code so it"ll be compiled.

require("@rails/ujs").start()
require("turbolinks").start()
require("@rails/activestorage").start()
require("channels")
// require("greensock/TweenLite")
// require("greensock/easing/EasePack")
// require("greensock/jquery.gsap.js")
require("jquery")
var FusionCharts = require("src/fusioncharts/fusioncharts");

// Require charts from fusioncharts
var Charts = require("src/fusioncharts/fusioncharts.charts");

// Require export module from fusioncharts
var ExcelExport = require("src/fusioncharts/fusioncharts.excelexport");

// Require theme from fusioncharts
var FusionTheme = require("src/fusioncharts/themes/fusioncharts.theme.fusion");

// Add charts and themes and export module as dependency
Charts(FusionCharts);
FusionTheme(FusionCharts);
ExcelExport(FusionCharts);
import "bootstrap"

import "../stylesheets/application.scss"
// Uncomment to copy all static images under ../images to the output folder and reference
// them with the image_pack_tag helper in views (e.g <%= image_pack_tag "rails.png" %>)
// or the `imagePath` JavaScript helper below.
//
// const images = require.context("../images", true)
// const imagePath = (name) => images(name, true)

import "controllers"
