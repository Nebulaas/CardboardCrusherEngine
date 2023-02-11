function onCreate()
runHaxeCode([[
            game.initLuaShader('aberration');

            shader0 = game.createRuntimeShader('aberration');

            game.camGame.setFilters([new ShaderFilter(shader0)]);
            shader0.setFloat('aberration',0.1);
            shader0.setFloat('effectTime',0.1);

             //game.camGame.setFilters([new ShaderFilter(game.getLuaObject("grapshad").shader)]);
]])  
end