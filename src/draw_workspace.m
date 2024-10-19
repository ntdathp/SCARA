function draw_workspace()
    t1 = linspace(-120, 120,1000)*pi/180;
    x1 = (175+125)*cos(t1)+0;
    y1 = (175+125)*sin(t1)+0;
    z1a = ones(size(t1))*43;
    z1b = ones(size(t1))*205.5;
    z1 = zeros(size(t1));
    surf([x1;x1], [y1;y1], [z1a; z1b],'FaceColor','interp','EdgeColor','none', 'FaceAlpha',1)
    fill3(x1, y1, z1a,'c','EdgeColor','none', 'FaceAlpha',0.25)

    t2 = linspace(-180, 180,1000)*pi/180;
    x2 = 100*cos(t2); %a(2) * sin(theta 2) max 
    y2 = 100*sin(t2);
    z2a = ones(size(t2))*43;
    z2b = ones(size(t2))*205.5;
    z2 = zeros(size(t2));
    surf([x2;x2], [y2;y2], [z2a; z2b],'FaceColor','interp','EdgeColor','none', 'FaceAlpha',1)
    fill3(x2, y2, z2a,'w','EdgeColor','none', 'FaceAlpha',0.25)

    t3 = linspace(90, 246,1000)*pi/180;
    x3 = 125*cos(t3)-100.3759; %a(1) s/c theta(1) max
    y3 = 125*sin(t3)-143.3516;
    z3a = ones(size(t3))*43;
    z3b = ones(size(t3))*205.5;
    z3 = zeros(size(t3));
    surf([x3;x3], [y3;y3], [z3a; z3b],'FaceColor','interp','EdgeColor','none', 'FaceAlpha',1)
    fill3(x3, y3, z3a, 'c','EdgeColor','none', 'FaceAlpha',0.25)

    t4 = linspace(114, 270,1000)*pi/180;
    x4 = 125*cos(t4)-100.3759;
    y4 = 125*sin(t4)+143.3516;
    z4a = ones(size(t4))*43;
    z4b = ones(size(t4))*205.5;
    z4 = zeros(size(t4));
    surf([x4;x4], [y4;y4], [z4a; z4b],'FaceColor','interp','EdgeColor','none', 'FaceAlpha',1)
    fill3(x4, y4, z4a, 'c','EdgeColor','none', 'FaceAlpha',0.25)
end