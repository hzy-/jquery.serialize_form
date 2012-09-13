$.fn.serialize_form = ->
    array = this.serializeArray()
    output = {}
    ($ array).each ->
        name = @name
        value = @value

        unless output[name]?
            output[name] = value
        else if _.isArray output[name]
            output[name].push value
        else
            output[name] = [output[name], value]

    $.extend output, $.ajaxSettings.data