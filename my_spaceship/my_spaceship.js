function my_spaceship(flightParam) {
    const Direction = {
          Up: 'up',
          Down: 'down',
          Left: 'left',
          Right: 'right'
    };
    let current_direction = Direction.Up;
    let currentX = 0;
    let currentY = 0;
    
    for(let i = 0; i < flightParam.length; i++) {
        let cmd = flightParam[i];
        switch(cmd){
            case 'L':
                if(current_direction === Direction.Up) {
                    current_direction = Direction.Left;
                } else if(current_direction === Direction.Left) {
                    current_direction = Direction.Down;
                } else if(current_direction === Direction.Down) {
                    current_direction = Direction.Right;
                } else if(current_direction === Direction.Right) {
                    current_direction = Direction.Up;
                } 
                break;
            case 'R':
                if(current_direction === Direction.Up){
                    current_direction = Direction.Right;
                } else if(current_direction === Direction.Right) {
                    current_direction = Direction.Down;
                } else if(current_direction === Direction.Down) {
                    current_direction = Direction.Left;
                } else if(current_direction === Direction.Left) {
                    current_direction = Direction.Up;
                }
                break;
            case 'A':
                if(current_direction === Direction.Up) {
                    currentY -= 1;
                } else if(current_direction === Direction.Right) {
                    currentX += 1;
                } else if(current_direction === Direction.Down) {
                    currentY += 1;
                } else if(current_direction === Direction.Left) {
                    currentX -= 1;
                }
                break;
        }
    }
    
    const result = `{x: ${currentX}, y: ${currentY}, direction: '${current_direction}'}`;
    return result;
}

//console.log(my_spaceship("RAALALL"));
//console.log(my_spaceship("AAAA"));
//console.log(my_spaceship(""));
//console.log(my_spaceship("RAARA"));
