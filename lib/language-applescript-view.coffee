{View} = require 'atom'

module.exports =
class LanguageApplescriptView extends View
  @content: ->
    @div class: 'language-applescript overlay from-top', =>
      @div "The LanguageApplescript package is Alive! It's ALIVE!", class: "message"

  initialize: (serializeState) ->
    atom.workspaceView.command "language-applescript:toggle", => @toggle()

  # Returns an object that can be retrieved when package is activated
  serialize: ->

  # Tear down any state and detach
  destroy: ->
    @detach()

  toggle: ->
    console.log "LanguageApplescriptView was toggled!"
    if @hasParent()
      @detach()
    else
      atom.workspaceView.append(this)
