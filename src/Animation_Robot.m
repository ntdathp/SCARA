function Animation_Robot(equal,handles,theta1_old,theta2_old,d3_old,theta4_old,theta1_new,theta2_new,theta4_new,d3_new,a,alpha,d,theta)
global a alpha d theta
if (equal == 0)
%%
    if (theta1_old*180/pi <= 125)
        if(theta1_old > theta1_new)
            theta1_ = theta1_old:-(theta1_old - theta1_new)/30:theta1_new;
        elseif (theta1_old < theta1_new)
            theta1_ = theta1_old:(theta1_new - theta1_old)/30:theta1_new;
        else
            theta1_ = theta1_old*ones(1,31);
        end
    else
        if((theta1_old - 2*pi) > theta1_new)
            theta1_ = (theta1_old - 2*pi):-((theta1_old - 2*pi) - theta1_new)/30:theta1_new;
        elseif ((theta1_old - 2*pi) < theta1_new)
            theta1_ = (theta1_old - 2*pi):(theta1_new - (theta1_old - 2*pi))/30:theta1_new;
        else
            theta1_ = theta1_old*ones(1,31);
        end
    end
%%    
    if (theta2_old*180/pi <= 145)
        if(theta2_old > theta2_new)
            theta2_ = theta2_old:-(theta2_old - theta2_new)/30:theta2_new;
        elseif (theta2_old < theta2_new)
            theta2_ = theta2_old:(theta2_new - theta2_old)/30:theta2_new;
        else
            theta2_ = theta2_old*ones(1,31); 
        end
    else
        if((theta2_old - 2*pi) > theta2_new)
            theta2_ = (theta2_old - 2*pi):-((theta2_old - 2*pi) - theta2_new)/30:theta2_new;
        elseif ((theta2_old - 2*pi) < theta2_new)
            theta2_ = (theta2_old - 2*pi):(theta2_new - (theta2_old - 2*pi))/30:theta2_new;
        else
            theta2_ = theta2_old*ones(1,31);   
        end
    end
%%   
    if (theta4_old*180/pi <= 180)
        if(theta4_old > theta4_new)
            theta4_ = theta4_old:-(theta4_old - theta4_new)/30:theta4_new;
        elseif (theta4_old < theta4_new)
            theta4_ = theta4_old:(theta4_new - theta4_old)/30:theta4_new;
        else
            theta4_ = theta4_old*ones(1,31);      
        end
    else
        if((theta4_old - 2*pi) > theta4_new)
            theta4_ = (theta4_old - 2*pi):-((theta4_old - 2*pi) - theta4_new)/30:theta4_new
        elseif ((theta4_old - 2*pi) < theta4_new)
            theta4_ = (theta4_old - 2*pi):(theta4_new - (theta4_old - 2*pi))/30:theta4_new
        else
            theta4_ = theta4_old*ones(1,31)      
        end
    end
%%
    if(d3_old > d3_new)
        d3_ = d3_old:-(d3_old - d3_new)/30:d3_new;
    elseif (d3_old < d3_new)
        d3_ = d3_old:(d3_new - d3_old)/30:d3_new;
    else
        d3_ = d3_old*ones(1,31);
    end
%%
    for i = 1:length(theta1_)
        theta(1) = wrapTo360(theta1_(i)*180/pi)*pi/180;
        theta(2) = wrapTo360(theta2_(i)*180/pi)*pi/180;
        theta(4) = wrapTo360(theta4_(i)*180/pi)*pi/180;
        d(3)     = -d3_(i);
        plot_frame_arm(a,alpha,d,theta,handles)
        if (theta1_old*180/pi <= 125)
            handles.Theta1_val.String = num2str(round(theta(1)*180/pi,2));
        else
            handles.Theta1_val.String = num2str(round((theta(1) - 2*pi)*180/pi,2));
        end
        if (theta2_old*180/pi <= 145)
            handles.Theta2_val.String = num2str(round(theta(2)*180/pi,2));
        else
            handles.Theta2_val.String = num2str(round((theta(2) - 2*pi)*180/pi,2));
        end
        if (theta4_old*180/pi <= 180)
            handles.Theta4_val.String = num2str(round(theta(4)*180/pi,2));
        else
            handles.Theta4_val.String = num2str(round((theta(4) - 2*pi)*180/pi,2));
        end
        handles.d3_val.String = num2str((-d(3)));
        pause(0.2)
    end    
else
    theta(1) = theta1_old;
    theta(2) = theta2_old;
    theta(4) = theta4_old;
    d(3)     = -d3_old;
    plot_frame_arm(a,alpha,d,theta,handles)
end

end