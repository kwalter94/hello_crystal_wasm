require "js"

module Web
  include JS::ExpandMethods

  abstract class DomObject < JS::Reference
  end

  class Document < DomObject
    js_method querySelector(query : String), HTMLElement
  end

  class HTMLElement < DomObject
    js_setter innerHTML : String
  end

  @[JS::Method]
  def self.document : Document
    <<-js
      return window.document
    js
  end
 end

 document = Web.document
 optional_element = document.query_selector("#playground")
 optional_element.try do |element|
   element.inner_html = "<h1>Your days are numbered Javascript!!!</h1>"
 end

