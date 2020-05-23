#define FLAG_COLLISION_NONE 0x0
#define FLAG_COLLISION_ETHEREAL 0x1
#define FLAG_COLLISION_WALKING 0x2
#define FLAG_COLLISION_FLYING 0x4
#define FLAG_COLLISION_SWIMMING 0x8
#define FLAG_COLLISION_ITEM 0x20 //For item collisions. Checks if items are allowed to pass.
#define FLAG_COLLISION_CRAWLING 0x40 //For crawling objects, such as dead bodies.

#define FLAG_COLLISION_WALL FLAG_COLLISION_WALKING | FLAG_COLLISION_FLYING | FLAG_COLLISION_SWIMMING | FLAG_COLLISION_ITEM | FLAG_COLLISION_CRAWLING //For walls.
#define FLAG_COLLISION_BARICADE FLAG_COLLISION_WALKING | FLAG_COLLISION_SWIMMING | FLAG_COLLISION_CRAWLING //For hip level barricades.

#define FLAG_COLLISION_ALL 0xFFFFFF


#define FLAG_COLLISION_BULLET_NONE 0x0
#define FLAG_COLLISION_BULLET_SOLID 0x1
#define FLAG_COLLISION_BULLET_LIGHT 0x2
#define FLAG_COLLISION_BULLET_XRAY 0x4
#define FLAG_COLLISION_SPECIFIC 0x8 //You can attack this as long as you specifically click on it.

#define FLAG_COLLISION_BULLET_ORGANIC FLAG_COLLISION_BULLET_SOLID | FLAG_COLLISION_BULLET_LIGHT | FLAG_COLLISION_BULLET_XRAY
#define FLAG_COLLISION_BULLET_INORGANIC FLAG_COLLISION_BULLET_SOLID | FLAG_COLLISION_BULLET_LIGHT
#define FLAG_COLLISION_BULLET_WINDOW FLAG_COLLISION_BULLET_SOLID