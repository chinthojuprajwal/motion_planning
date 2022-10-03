function route = GradientBasedPlanner (f, start_coords, end_coords, max_its)
% GradientBasedPlanner : This function plans a path through a 2D
% environment from a start to a destination based on the gradient of the
% function f which is passed in as a 2D array. The two arguments
% start_coords and end_coords denote the coordinates of the start and end
% positions respectively in the array while max_its indicates an upper
% bound on the number of iterations that the system can use before giving
% up.
% The output, route, is an array with 2 columns and n rows where the rows
% correspond to the coordinates of the robot as it moves along the route.
% The first column corresponds to the x coordinate and the second to the y coordinate
%
% NOTE: Once the route array has been updated, pass the array as is instead of appending with zeros or NAN

[gx, gy] = gradient (-f);

%%% All of your code should be between the two lines of stars.
% *******************************************************************


%gx=gx/max(max(gx));gy=gy/max(max(gy));
current=start_coords;

iter=0;

while true
    iter=iter+1;
    
    step=[gx(round(current(2)),round(current(1))),gy(round(current(2)),round(current(1)))];
    sn=sqrt(step(1)^2+step(2)^2);
    current=(current+step/norm(step));
    route(iter,:)=(current);
    if norm(current-end_coords)<2 || iter>=max_its
        route(iter+1,:)=end_coords;
        route=double(route);
        break;
    end
    

end

% *******************************************************************
end
