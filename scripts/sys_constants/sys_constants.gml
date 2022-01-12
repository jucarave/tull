#macro EVENT_STEP 0

#macro LIGHT_DISTANCE 5

#macro GRID_WIDTH 16
#macro GRID_HEIGHT 24

#macro KEY_UP vk_up
#macro KEY_RIGHT vk_right
#macro KEY_LEFT vk_left
#macro KEY_DOWN vk_down
#macro KEY_ATTACK ord("A")
#macro KEY_INTERACT vk_enter
#macro KEY_INVENTORY ord("W")
#macro KEY_PASS vk_space
#macro KEY_CANCEL ord("Q")

#macro ITEM_TYPE_WEAPON 0
#macro ITEM_TYPE_CONSUMABLE 1

#macro NO_WEAPON -1

#macro ACTION_TEXT_SHORT 5

#macro ATTACK_TYPE_PUNCH 0
#macro ATTACK_TYPE_SLASH 1
#macro ATTACK_TYPE_BOW 2

#macro xgrid floor(x / GRID_WIDTH)
#macro ygrid floor(y / GRID_HEIGHT)

#macro DATA_SHORT_SWORD_DMG 3
#macro DATA_BOW_DMG 2
#macro DATA_HP_POTION_HEALS 10