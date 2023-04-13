%% Example 1
%In this example a simple execution of EnergyPLAN is launched with new
%values of i)Onshore wind capacity, ii)Offshore wind capacity and
%iii)Critical Excess Regulation Strategy.

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
OnshoreWind=3500;
OffshoreWind=3100;
STR='23457000';

%EnergyPLAN calling from matlab.
[annualData, monthlyData, hourlyData,...
    CO2, PES, RESshare,...
    TotalAnnualCosts, FuelExNgasExchange, NgasExchangeCosts,...
    MarginalCosts, ElectricityExCosts, ElectricImportCosts,...
    ElectricExportCosts, FixedImpExpCosts, CO2Costs, VariableCosts,...
    FixedCosts, AnnualInvestmentCosts, Coal, Oil,...
    Ngas, Biomass, Nuclear] = energyPlan(energyPlanPath, inputFilePath, outputFolder,...
    'input_RES1_capacity=', OnshoreWind, 'input_RES2_capacity=', OffshoreWind,...
    'input_keol_reg=', STR);



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