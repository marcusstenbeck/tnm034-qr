% DESCRIPTION
%   A function that finds the PIFS in the supplied image 

% PARAMETERS
%   IN:
%     o: The piaxisel currently being evaluated.
%     axis: The axis being evaluated 
%   OUT:
%     int: An integer which will be weighted later

function int = central_symmetri(axis)

int = (1/3)*(abs((abs(axis[4]-axis[0])-abs(axis[0]-axis[3]))/abs(axis[4]-axis[3])) + abs((abs(axis[5]-axis[0])-abs(axis[0]-axis[2]))/abs(axis[5]-axis[2])) + abs((abs(axis[6]-axis[0])-abs(axis[0]-axis[1]))/abs(axis[6]-axis[1])));

return;