#= require jquery
#= require jquery_ujs
#= require react
#= require react_ujs
#= require_tree .


OneTimeClickLink = React.createClass
  getInitialState: ->
    {clicked: false}
  linkClicked: (event) ->
    @setState(clicked: true)
  child: ->
    {
      false: React.DOM.a({href: "javascript:void(0)", onClick: @linkClicked}, "Click me"),
      true: React.DOM.span({}, "You clicked the link")
    }[@state.clicked]
  render: ->
    React.DOM.div({id: "one-time-click-link"}, @child())


$ ->
  oneTimeClickLink = React.createFactory(OneTimeClickLink)
  ReactDOM.render(
    oneTimeClickLink(),
    document.getElementById("start")
  )

