classdef validInputChecker
    properties
        voltageAcrossAudioJackPins {isnumeric}
        kElectricVoltage {isnumeric}
        inputt {isa(inputt,'double')}
        input2 {isa(input2,'double')}
        innputt {isa(innputt,'letter')}
        i2 {isa(i2,'letter')}
        answer {isa(answer,'double')}
    end
    methods
        function [gain,string,range] = validINputChecker( self , iNput , x , y )
            self.inputt = iNput ;
            self.voltageAcrossAudioJackPins = x ;  % second argument is the voltage observed across the audiojack poles
            self.kElectricVoltage = y ; % third argument is the KE voltage that is being stepped down.
            if self.inputt == 1
                gain = ( self.kElectricVoltage / self.voltageAcrossAudioJackPins );
                string = 'Voltage';
                range = [-315 315];
            elseif self.inputt == 2
                gain = 10 ;
                string = 'Current' ;
                range = [-0.7 0.7] ; %specify your own adc clipping range here
            else 
                disp("Wrong input. Try again.")
                self.input2 = input("Enter the number of plot: ") ;
                [gain,string,range] = validINputChecker( self , self.input2 , self.voltageAcrossAudioJackPins , self.kElectricVoltage ) ;
            end
        end
        function validAns = validINPutChecker( self , answer )
            self.innputt = answer ;
            if self.innputt == "Y" || self.innputt == 'y' 
                validAns = 1;
            elseif self.innputt == 'N' || self.innputt == 'n'
                validAns = 0;
            else
                disp("Wrong input. Try again.")
                self.i2 = input (" Enable windowing of the input (Y/N)? ",'s');
                validAns = validINPutChecker( self , self.i2 ) ;
            end
        end
        function winReturn = winInput( self , answ , len )
            self.answer = answ ;
            if self.answer == 1
                winReturn = window (@barthannwin,len);
            elseif self.answer == 2
                winReturn = window (@bartlett,len) ;
            elseif self.answer == 3
                winReturn = window (@blackman,len) ;
            elseif self.answer == 4
                winReturn = window (@blackmanharris,len) ;
            elseif self.answer == 5
                winReturn = window (@bohmanwin,len) ;
            elseif self.answer == 6
                winReturn = window (@chebwin,len) ;
            elseif self.answer == 7
                winReturn = window (@flattopwin,len) ;
            elseif self.answer == 8
                winReturn = window (@gausswin,len) ;
            elseif self.answer == 9
                winReturn = window (@hamming,len) ;
            elseif self.answer == 10
                winReturn = window (@hann,len) ;
            elseif self.answer == 11
                winReturn = window (@kaiser,len) ;
            elseif self.answer == 12
                winReturn = window (@nuttallwin,len) ;
            elseif self.answer == 13
                winReturn = window (@parzenwin,len) ;
            elseif self.answer == 14
                winReturn = window (@rectwin,len) ;
            elseif self.answer == 15
                winReturn = window (@tukeywin,len) ;
            elseif self.answer == 16
                winReturn = window (@triang,len) ;
            elseif self.answer == 17
                winReturn = window (@taylorwin,len) ;
            end
        end
    end
end