%% Example 2
%In this example multiple-execution of the same input file are done with
%EnergyPLAN to look for the configuration of Wind and PV with less CO2
%emissions.

%To try it, you can put this example file in the same location of
%energyPLAN.exe file and run it.

%% Paths and Folder definitions
%Path where it is located EnergyPLAN executable.
energyPlanPath = 'energyPLAN.exe';
%Path of reference file.
inputFilePath = 'energyPlan Data\Data\Denmark2030Alternative.txt';
%Folder where will be output resulf of EnergyPLAN.
outputFolder = 'Outputs\';

%% EnergyPLAN calling and parameters/values definitions
% Definition of numeric values to parameters of reference input file.
OnshoreWind=[35 350 3500];
PV=[31 310 3100];
STR='23457000';

%EnergyPLAN calling from matlab.
for i = 1:3
    for j=1:3
        [~, ~, ~, CO2, ~, ~, ~, ~, ~, ~, ~, ~, ~,...
            ~, ~, ~, ~, ~, ~, ~, ~, ~, ~] =energyPlan(energyPlanPath, inputFilePath, outputFolder,...
            'input_RES1_capacity=', OnshoreWind(i), 'input_RES3_capacity=', PV(j),...
            'input_keol_reg=', STR);
        result(i,j) = CO2;
    end
end


%%    Copyright 2017 Pedro Jesús Cabrera Santana
%
%    Licensed under the Apache License, Version 2.0 (the "License");
%    you may not use this file except in compliance with the License.
%    You may obtain a copy of the License at
%
%      http://www.apache.org/licenses/LICENSE-2.0
%
%    Unless required by applicable law or agreed to in writing, software
%    distributed under the License is distributed on an "AS IS" BASIS,
%    WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
%    See the License for the specific language governing permissions and
%    limitations under the License.