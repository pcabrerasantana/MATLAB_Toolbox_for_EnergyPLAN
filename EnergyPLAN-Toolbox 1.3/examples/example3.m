%% Example 3
%In this example several input files placed in energyPlan Data/Data folder
%are changed to updated the wind and pv hourly distributions.

%To try it, you can put this example file in the same location of
%energyPLAN.exe file and run it.

%% Paths and Folder definitions
%Path where are the input files to change
inputsPathfolder='energyPlan Data\Data\';
%To chose only files which names begin with word "Denmark".
filenames=dir([inputsPathfolder,'Denmark*.txt']);

%To look for each file and to change the .
for i=1:length(filenames)
    filenames(i).name
    nuevoNombre=strrep(filenames(i).name, '-7', '-8');
    changeInputEnergyPlan([inputsPathfolder,filenames(i).name],[inputsPathfolder,nuevoNombre], ...
        'Filnavn_wind=', 'hour_wind_eltra2000.txt',... % Use 'hour_wind_eltra2000.txt' distribution, instead 'hour_wind_eltra2001.txt'
        'Filnavn_pv=', 'hour_PV_eltra2002.txt'); % Use 'hour_PV_eltra2002.txt'  distribution, instead 'hour_PV_eltra2001.txt'
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
%--------------------------------------------------------------------------