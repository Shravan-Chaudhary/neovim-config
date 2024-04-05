
return {
    "goolord/alpha-nvim",
    event = "VimEnter",
    config = function()
        local alpha = require("alpha")
        local dashboard = require("alpha.themes.dashboard")
        
        -- Set header
        dashboard.section.header.val = [[
-._: .:'   `::: .:\           |\__/|           /:: .:'   `::: .:.-'
\      :          \          |:   |          /         :       /     
\     ::    .     `-_______/ ::   \_______-'   .      ::   . /       
| :   :: ::' :   :: ::' :   :: ::'      :: ::' :   :: :|        
|     ;::         ;::         ;::         ;::         ;:: |        
| .:'   `::: .:'   `::: .:'   `::: .:'   `::: .:'   `:|        
/     :           :           :           :           :    \        
/______::_____     ::    .     ::    .     ::   _____._::____\       
                   `----._:: ::' :   :: ::' _.----'                     
                          `--.       ;:: .--'                            
                              `-. .:' .-'                                
                                 \    /                            
                                 \ /                                    
                                   \/ 
        ]]
    end,
}
