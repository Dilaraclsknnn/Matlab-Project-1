%%
clear all, close all, clc

% Ask to the user for entering year information

%your code should be written here
year_val = input("Please enter the year value: ");
January1finder_(year_val)

%%
% find the corresponding day of the week for entered info by calling your
% function

%your code should be written here
function day1_Jan = January1finder_(year_val)
%%
% find current year

%your code should be written here
day1_Jan = mod(1+5*mod(year_val-1,4) + 4*mod(year_val-1, 100) + 6*mod(year_val-1,400),7);


% print the information using considering correct grammar!

%your code should be written here
disp(day1_Jan);

if year_val > 2022 

switch(day1_Jan)
    
    case 0
        fprintf('Written by Dilara - First day of the year will be Sunday.')

    case 1
        fprintf('Written by Dilara - First day of the year will be Monday.')

    case 2
        fprintf('Written by Dilara - First day of the year will be Tuesday.')

    case 3
        fprintf('Written by Dilara - First day of the year will be Wednesday.')
    
    case 4
        fprintf('Written by Dilara - First day of the year will be Thursday.')
        
    case 5
        fprintf('Written by Dilara - First day of the year will be Friday.')

    case 6
        fprintf('Written by Dilara - First day of the year will be Saturday.')
end
end
        
if year_val <= 2022
    
switch(day1_Jan)

    case 0
        fprintf('Written by Dilara - First day of the year was Sunday.')

    case 1
        fprintf('Written by Dilara - First day of the year was Monday.')

    case 2
        fprintf('Written by Dilara - First day of the year was Tuesday.')

    case 3
        fprintf('Written by Dilara - First day of the year was Wednesday.')

    case 4
        fprintf('Written by Dilara - First day of the year was Thursday.')
        
    case 5
        fprintf('Written by Dilara - First day of the year was Friday.')

    case 6
        fprintf('Written by Dilara - First day of the year was Saturday.')
end
end

end

%%
% second part: please avoid using the switch-case!
function day1_Jan = January1finder(~)
year_val = input("Please enter the year value: ");
January1finder(year_val)
day1_Jan = mod(1+5*mod(year_val-1,4) + 4*mod(year_val-1, 100) + 6*mod(year_val-1,400),7);
disp(day1_Jan);
if day1_Jan == 0
    disp("Written by Dilara - Sunday.");
elseif day1_Jan == 1
    disp("Written by Dilara - Monday.");
elseif day1_Jan == 2
    disp("Written by Dilara - Tuesday.");
elseif day1_Jan == 3
    disp("Written by Dilara - Wednesday.");
elseif day1_Jan == 4
    disp("Written by Dilara - Thursday.");
elseif day1_Jan == 5
    disp("Written by Dilara - Friday.");
elseif day1_Jan == 6
    disp("Written by Dilara - Saturday.");
end
end








