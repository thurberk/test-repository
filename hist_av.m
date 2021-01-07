% average double histograms with peaks separated by 180 degrees
% was file "analysis_2019feb25_av.m"

class=100
center=36; % center must be between -135 and -45
            % or between -45 and +45
av1=0;
counter1=0;
av2=0;
counter2=0;
if (center>=-135 && center <=-45)
    splitangle1= center + 45;;
    splitangle2= center - 45;;
    splitangle3= center + 135;
    splitangle4= center + 225;

for a=1:ccounter(class)
    if (cm(class,a)>splitangle2 && cm(class,a)<splitangle1)
    %if (cm(class,a)>splitangle1)
        av1=av1+cm(class,a);
        counter1=counter1+1;
    else if (cm(class,a)>splitangle3 && cm(class,a)<splitangle4)
        av2=av2+cm(class,a);
        counter2=counter2+1;
        end
    end
end
end

if (center> -45 && center <= 45)
    splitangle1= center + 45;;
    splitangle2= center - 45;;
    splitangle3= center + 135;
    splitangle4= center - 135;

for a=1:ccounter(class)
    if (cm(class,a)>splitangle2 && cm(class,a)<splitangle1)
    %if (cm(class,a)>splitangle1)
        av1=av1+cm(class,a);
        counter1=counter1+1;
    else if (cm(class,a)>splitangle3)
        av2=av2+cm(class,a);
        counter2=counter2+1;
        end
        if (cm(class,a)<splitangle4)
        av2=av2+cm(class,a)+360;
        counter2=counter2+1;
        end
    end
end
end

average1=av1/counter1;
average2=av2/counter2;
net = counter1/(counter1+counter2);
