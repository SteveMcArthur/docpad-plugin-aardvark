# Export Plugin
module.exports = (BasePlugin) ->
    # Define Plugin
    console.log("GOT THE AARDVARK....")
    class AardvarkPlugin extends BasePlugin
        # Plugin name
        name: 'aardvark'

        # Config
        config:{}
        
        setConfig: ->
            super
            @docpad.log('info',"aardvark loaded...")
        
        # Use to extend the server with routes that will
        # be triggered before the DocPad routes.
        serverExtend: (opts) ->
            # Extract the server from the options
            {server} = opts
            
            server.get '/aardvark' , (req,res,next) ->
                res.send("Ethel The Aardvark Goes Quantity Surveying")


            @
        

