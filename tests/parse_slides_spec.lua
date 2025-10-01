---@diagnostic disable: undefined-field
local parse = require "present"._parse_slides

local eq = assert.are.same

describe("present.parse_slides", function()
  it("Should parse an empty file", function()
    eq({
      slides = {
        {
          title = '',
          body = {}
        } }
    }, parse {})
  end)

  it("Should parse a file with one slide", function()
    eq({
      slides = {
        {
          title = '# This is the first slide',
          body = { "This is the first slide's body" }
        } }
    }, parse {
      "# This is the first slide",
      "This is the first slide's body",
    })
  end)
end)
