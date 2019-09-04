clear all
clc

%angle_rad = deg2rad(90); %se le quito 90 g debido a que es un angulo fijo NOTA:no es conversion de un angulo fijo  
promt = 'introduzca el valor (grados) de la rotacon X (phi):';
 phideg = input(promt);
 phiRad = deg2rad(phideg);
 
 promt = 'introduzca el valor (grados) de la rotacon Y (theta):';
 thetadeg = input(promt);
 thetaRad = deg2rad(thetadeg);
 
 promt = 'introduzca el valor (grados) de la rotacon Z (psi):';
 psideg = input(promt);
 psiRad = deg2rad(psideg);

for phiRad=0:0.5:phiRad
    for  thetaRad=0:0.5: thetaRad
          for  psiRad=0:0.5:psiRad
        

%line([xi xf],[yi yf],[zi zf],'color',[1 0 0],'linewidth',2.5);
 line([-5 5],[0 0],[0 0],'color',[1 0 0],'linewidth',2.5); %establece el eje X en rojo
 line([0 0],[-5 5],[0 0],'color',[0 1 0],'linewidth',2.5); %establece el eje Y en verde
 line([0 0],[0 0],[-5 5],'color',[0 0 1],'linewidth',2.5); %establece el eje Z en azul
 
 p1=[0 0 0];
 p2=[7 0 0];
 p3=[7 3 0];
 p4=[0 3 0];
 p5=[0 3 2];
 p6=[0 0 2];
 p7=[7 0 2];
 p8=[7 3 2];
 


 line([p1(1) p2(1)],[p1(2) p2(2)],[0 0],'color',[0 0 1],'linewidth',5); %% traza linea del punto p1 a p2 sobre el eje x
 line([p2(1) p3(1)],[p2(2) p3(2)],[0 0],'color',[0 0 1],'linewidth',5);
 line([p3(1) p4(1)],[p3(2) p4(2)],[0 0],'color',[0 0 1],'linewidth',5);
 line([p1(1) p4(1)],[p1(2) p4(2)],[0 0],'color',[0 0 1],'linewidth',5);
 
 
 
 line([p4(1) p5(1)],[p4(2) p5(2)],[p4(3) p5(3)],'color',[0 0 1],'linewidth',5);

 line([p5(1) p6(1)],[p5(2) p6(2)],[p5(3) p6(3)],'color',[0 0 1],'linewidth',5);
 line([p5(1) p8(1)],[p5(2) p8(2)],[p5(3) p8(3)],'color',[0 0 1],'linewidth',5);
 line([p6(1) p7(1)],[p6(2) p7(2)],[p6(3) p7(3)],'color',[0 0 1],'linewidth',5);
 line([p6(1) p1(1)],[p6(2) p1(2)],[p6(3) p1(3)],'color',[0 0 1],'linewidth',5);
 line([p7(1) p8(1)],[p7(2) p8(2)],[p7(3) p8(3)],'color',[0 0 1],'linewidth',5);
 line([p7(1) p2(1)],[p7(2) p2(2)],[p7(3) p2(3)],'color',[0 0 1],'linewidth',5);
 line([p8(1) p3(1)],[p8(2) p3(2)],[p8(3) p3(3)],'color',[0 0 1],'linewidth',5);
 
%        X       Y       Z             R G B

 
 %view (120,30)
 %Rx = [1 0 0 ; 0 cos (phiRad) sen(phiRad);0 -sen(phiRad) cos (phiRad)];
 %Ry = [cos(theta) 0 -sen(theta); 0 1 0 ;sen(theta) 0 cos(theta)];
 %Rz = [cos(psi) -sen(psi) 0 ; sen(psi) cos(psi) 0 ; 0 0 1];

 %Rt=Rx;
 
 

 
view (120,30)
 Rz = [cos(psiRad) -sin(psiRad) 0 ; sin(psiRad) cos(psiRad) 0 ; 0 0 1];
 Rx = [1 0 0 ; 0 cos(phiRad) -sin(phiRad);0 sin(phiRad) cos(phiRad)];
 Ry = [cos(thetaRad) 0 -sin(thetaRad); 0 1 0 ;sin(thetaRad) 0 cos(thetaRad)];

 Rt= Rz*Rx*Ry;
 
 p1= Rt*p1';
  p2= Rt*p2';
   p3= Rt*p3';
    p4= Rt*p4';
     p5= Rt*p5';
      p6= Rt*p6';
       p7= Rt*p7';
        p8= Rt*p8';
       
        
 line([-5 5],[0 0],[0 0],'color',[1 0 0],'linewidth',2.5); %establece el eje X en rojo
 line([0 0],[-5 5],[0 0],'color',[0 1 0],'linewidth',2.5); %establece el eje Y en verde
 line([0 0],[0 0],[-5 5],'color',[0 0 1],'linewidth',2.5); %establece el eje Z en azul
 
 line([p1(1) p2(1)],[p1(2) p2(2)],[0 0],'color',[0 0 1],'linewidth',5); %% traza linea del punto p1 a p2 sobre el eje x
 line([p2(1) p3(1)],[p2(2) p3(2)],[0 0],'color',[0 0 1],'linewidth',5);
 line([p3(1) p4(1)],[p3(2) p4(2)],[0 0],'color',[0 0 1],'linewidth',5);
 line([p1(1) p4(1)],[p1(2) p4(2)],[0 0],'color',[0 0 1],'linewidth',5);
 
 
 
 line([p4(1) p5(1)],[p4(2) p5(2)],[p4(3) p5(3)],'color',[0 0 1],'linewidth',5);

 line([p5(1) p6(1)],[p5(2) p6(2)],[p5(3) p6(3)],'color',[0 0 1],'linewidth',5);
 line([p5(1) p8(1)],[p5(2) p8(2)],[p5(3) p8(3)],'color',[0 0 1],'linewidth',5);
 line([p6(1) p7(1)],[p6(2) p7(2)],[p6(3) p7(3)],'color',[0 0 1],'linewidth',5);
 line([p6(1) p1(1)],[p6(2) p1(2)],[p6(3) p1(3)],'color',[0 0 1],'linewidth',5);
 line([p7(1) p8(1)],[p7(2) p8(2)],[p7(3) p8(3)],'color',[0 0 1],'linewidth',5);
 line([p7(1) p2(1)],[p7(2) p2(2)],[p7(3) p2(3)],'color',[0 0 1],'linewidth',5);
 line([p8(1) p3(1)],[p8(2) p3(2)],[p8(3) p3(3)],'color',[0 0 1],'linewidth',5);
 
pause (0.1)
          end
    end
end
 grid