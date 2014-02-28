LanguageApplescriptView = require './language-applescript-view'

module.exports =
  languageApplescriptView: null

  activate: (state) ->
    @languageApplescriptView = new LanguageApplescriptView(state.languageApplescriptViewState)

  deactivate: ->
    @languageApplescriptView.destroy()

  serialize: ->
    languageApplescriptViewState: @languageApplescriptView.serialize()
