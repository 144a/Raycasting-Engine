int[][] worldMap = {
  { 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1 }, 
  { 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1 }, 
  { 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1 }, 
  { 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1 }, 
  { 1, 0, 0, 0, 0, 0, 2, 2, 2, 2, 2, 0, 0, 0, 0, 3, 0, 3, 0, 3, 0, 0, 0, 1 }, 
  { 1, 0, 0, 0, 0, 0, 2, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1 }, 
  { 1, 0, 0, 0, 0, 0, 2, 0, 0, 0, 2, 0, 0, 0, 0, 3, 0, 0, 0, 3, 0, 0, 0, 1 }, 
  { 1, 0, 0, 0, 0, 0, 2, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1 }, 
  { 1, 0, 0, 0, 0, 0, 2, 2, 0, 2, 2, 0, 0, 0, 0, 3, 0, 3, 0, 3, 0, 0, 0, 1 }, 
  { 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1 }, 
  { 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1 }, 
  { 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1 }, 
  { 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1 }, 
  { 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1 }, 
  { 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1 }, 
  { 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1 }, 
  { 1, 4, 4, 4, 4, 4, 4, 4, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1 }, 
  { 1, 4, 0, 4, 0, 0, 0, 0, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1 }, 
  { 1, 4, 0, 0, 0, 0, 5, 0, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1 }, 
  { 1, 4, 0, 4, 0, 0, 0, 0, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1 }, 
  { 1, 4, 0, 4, 4, 4, 4, 4, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1 }, 
  { 1, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1 }, 
  { 1, 4, 4, 4, 4, 4, 4, 4, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1 }, 
  { 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1 } 
};


double posX = 22.0; 
double posY = 12.0;
double dirX = -1.0; 
double dirY = 0.0;
double planeX = 0.0; 
double planeY = 0.66;

double time = 0.0;
double oldTime = 0.0;
int h;
int w;

public void setup() {
  size(500, 500);
  background(0);
  strokeWeight(1.0);
  frameRate(300);
  h = 500;
  w = 500;
}

public void updateMiniMap() {
  int scale = 5;
  int c1;
  int c2; 
  int c3;
  noStroke();
  for (int n = 0; n < worldMap.length; n++) {
    for (int m = 0; m < worldMap[0].length; m++) { 
      switch (worldMap[n][m]) {
        case 1:  c1 = 127; c2 = 0; c3 = 0; break;
        case 2:  c1 = 0; c2 = 127; c3 = 0; break;
        case 3:  c1 = 0; c2 = 0; c3 = 127; break;
        case 4:  c1 = 255; c2 = 255; c3 = 225; break;
        default:  c1 = 0; c2 = 0; c3 = 0;
      }
      fill(c1, c2 ,c3);
      rect(n * scale, m * scale, scale, scale);
    }
  }
  fill(127);
  rect((int)posX * scale, (int)posY * scale, scale, scale);
  // line((int)posX * scale + .5 * scale, (int)posY * scale + .5 * scale, planeX * scale * 2, planeY * scale * 2);
  println(planeX);
  println(planeY);
}




public void draw()
{
  background(0);
  for (int x = 0; x < w; x++) {
    double cameraX = 2 * x / (double)(w) - 1.0;
    double rayDirX = dirX + planeX * cameraX;
    double rayDirY = dirY + planeY * cameraX;
    
    int mapX = (int)posX;
    int mapY = (int)posY;
    
    double deltaDistX = abs((float)(1.0 / rayDirX));
    double deltaDistY = abs((float)(1.0 / rayDirY));
    double perpWallDist;
    
    double sideDistX;
    double sideDistY;
    
    int stepX;  
    int stepY;
    
    int hit = 0;
    int side = 0;
    
    if (rayDirX < 0.0) {
      stepX = -1;
      sideDistX = (posX - mapX) * deltaDistX;
    } else {
      stepX = 1;
      sideDistX = (mapX + 1.0 - posX) * deltaDistX; 
    }   
    
    if (rayDirY < 0.0) {
      stepY = -1;
      sideDistY = (posY - mapY) * deltaDistY;
    } else {
      stepY = 1;
      sideDistY = (mapY + 1.0 - posY) * deltaDistY;
    }
    
    while (hit == 0) {
      if (sideDistX < sideDistY) {
        sideDistX += deltaDistX;
        mapX += stepX;
        side = 0;
      } else {
        sideDistY += deltaDistY;
        mapY += stepY;
        side = 1;
      }
      
      if (worldMap[mapX][mapY] > 0) {
        hit = 1;
      }
    }
    
    if (side == 0) {
      perpWallDist = (mapX - posX + (1 - stepX) / 2) / rayDirX;
    } else {
      perpWallDist = (mapY - posY + (1 - stepY) / 2) / rayDirY;
    }
   
    int lineHeight = (int)(h / perpWallDist); 

    int drawStart = -1 * lineHeight / 2 + h / 2;
    if (drawStart < 0) {
      drawStart = 0;
    }
    
    int drawEnd = lineHeight / 2 + h / 2;
    if (drawEnd >= h) {
      drawEnd = h - 1;
    }

    int c1;
    int c2; 
    int c3; 
    switch (worldMap[mapX][mapY]) {
      case 1:  c1 = 127; c2 = 0; c3 = 0; break;
      case 2:  c1 = 0; c2 = 127; c3 = 0; break;
      case 3:  c1 = 0; c2 = 0; c3 = 127; break;
      case 4:  c1 = 255; c2 = 255; c3 = 225; break;
      default:  c1 = 127; c2 = 34; c3 = 100;
    } 
    if (side == 1) {
      c1 /= 2;
      c2 /= 2;
      c3 /= 2;
    }
    stroke(c1, c2, c3);
    line(x, drawStart, x, drawEnd);
  }
  updateMiniMap();
  
  oldTime = time;
  time = millis();
  double frameTime = (time - oldTime) / 1000.0;
  println(1.0 / frameTime);
  redraw();
  


  float moveSpeed = (float)frameTime * 5.0;
  float rotSpeed = (float)frameTime * 3.0;
  if (keyPressed) {
    if (keyCode == 38) {
      if (worldMap[((int)(posX + dirX * moveSpeed))][((int)posY)] == 0) { 
        posX += dirX * moveSpeed; 
      }
      if (worldMap[((int)posX)][((int)(posY + dirY * moveSpeed))] == 0) { 
        posY += dirY * moveSpeed; 
      }
    }
    if (keyCode == 40) {
      if (worldMap[((int)(posX - dirX * moveSpeed))][((int)posY)] == 0) {
        posX -= dirX * moveSpeed;
      }
      if (worldMap[((int)posX)][((int)(posY - dirY * moveSpeed))] == 0) { 
        posY -= dirY * moveSpeed;
      }
    }
    if (keyCode == 39) {
      double oldDirX = dirX;
      dirX = (dirX * cos(-rotSpeed) - dirY * sin(-rotSpeed));
      dirY = (oldDirX * sin(-rotSpeed) + dirY * cos(-rotSpeed));
      double oldPlaneX = planeX;
      planeX = (planeX * cos(-rotSpeed) - planeY * sin(-rotSpeed));
      planeY = (oldPlaneX * sin(-rotSpeed) + planeY * cos(-rotSpeed));
    }
    
    if (keyCode == 37) {
      double oldDirX = dirX;
      dirX = (dirX * cos(rotSpeed) - dirY * sin(rotSpeed));
      dirY = (oldDirX * sin(rotSpeed) + dirY * cos(rotSpeed));
      double oldPlaneX = planeX;
      planeX = (planeX * cos(rotSpeed) - planeY * sin(rotSpeed));
      planeY = (oldPlaneX * sin(rotSpeed) + planeY * cos(rotSpeed));
    }
  }
}
 
