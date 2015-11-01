@RecordForm = React.createClass
  getInitialState: ->
    title: ''
    date: ''
    amount: ''

  handleChange: (e) ->
    name = e.target.name
    @setState "#{ name }": e.target.value

  valid: ->
    @state.title && @state.date && @state.amount

  render: ->
    React.DOM.form
      className: 'form-inline'
      React.DOM.div
        className: 'form-group'
        React.DOM.div
          type: 'text'
          className: 'form-control'
          placeHolder: 'Date'
          name: 'date'
          value: @state.due
          onChange: @handleChange
      React.DOM.button
        type: 'submit'
        className: 'btn btn-primary'
        disabled: !@valid()
        'Create record'
