% DESCRIPTION
%   A function that finds the PIFS in the supplied image

% genom att skanna bilden f�r att hitta PIFs, s�k efter mittpunkter i PIFs, ber�kna
%medelpunkten(gravitypoint), hitta h�rnpunkter 

% PARAMETERS
%   IN:
%     imin: The input image of the captured QR-code.
%   OUT:
%     imout: An image of the extracted QR-code



function imout = localization(imin)
    filter = [0 1 0; 1 -4 1; 0 1 0];
    %laplacefilter f�r att hitta linjer
    %for x = 1 : width
    %    for y = 1 : height
     %       ratio = [1 1 3 1 1];
            bla = filter2(filter, imin, 'same');
            imshow(bla)
            
            figure(2);
            [width, height] = size(bla);
            for x = 1 : width
                for y = 1 : height
                    if(bla(x,y) < 0.1)
                        bla(x,y) = 0;
                    else
                        bla(x,y) = 1;
                    end
                end
            end
imshow(bla)
      %  end
    %end
    
    

return;