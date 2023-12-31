
scope DefaultLineAimerDemo initializer init_function
    private function init_function takes nothing returns nothing
        call LineAimerRegisterEx('AOsh', "shockwave")
        call LineAimerRegisterEx('AOs2', "shockwave")
        call LineAimerRegisterEx('ACsh', "shockwave")
        call LineAimerRegisterEx('ACst', "shockwave")
        call LineAimerRegisterEx('ANsh', "shockwave")

        call LineAimerRegisterEx('ANbf', "breathoffire")
        call LineAimerRegisterEx('ANcf', "breathoffire")
        call LineAimerRegisterEx('ACbc', "breathoffire")
        call LineAimerRegisterEx('ACbf', "breathoffire")

        call LineAimerRegisterEx('AUcs', "carrionswarm")
        call LineAimerRegisterEx('ACca', "carrionswarm")
        call LineAimerRegisterEx('ACcv', "carrionswarm")
        call LineAimerRegisterEx('ACc2', "carrionswarm")
        call LineAimerRegisterEx('ACc3', "carrionswarm")
        call LineAimerRegisterEx('AUim', "impale")
        call LineAimerRegisterEx('ACmp', "impale")
        
        /*Add everything here*/
        call LineAimerRegisterEx('A00Z', "carrionswarm") //Elune's Arrow
        call LineAimerRegisterEx('A02A', "shockwave") //Tauren Shockwave
        call LineAimerRegisterEx('A033', "carrionswarm") //Phoenix Charge
        call LineAimerRegisterEx('A032', "impale") //Wind Style: Tornado
        call LineAimerRegisterEx('A02P', "carrionswarm") //Water Wave
        call LineAimerRegisterEx('A02H', "carrionswarm") //Carrion Swarm
        call LineAimerRegisterEx('A01T', "impale") //Impale
    endfunction
endscope