# Description:
#   awesome squirrela
#
# Dependencies:
#   None
#
# Configuration:
#   None
#
# Commands:
#   hubot_shows_awesome_squirrels
#
# Author
#   carllerche

squirrel = [
    "http://save-the-squirrels.com/wp-content/uploads/2012/03/guilty-party.jpg",
    "http://save-the-squirrels.com/wp-content/uploads/2012/03/Squirrel-Shark-640x640.jpg",
    "http://save-the-squirrels.com/wp-content/uploads/2012/03/Funny-Squirrel.jpg",
    "http://save-the-squirrels.com/wp-content/uploads/2012/03/Squirrels-Clan.jpg",
    "http://blog.oregonlive.com/kympokorny/2009/05/squirrel1.jpg",
    "http://onlyhdwallpapers.com/wallpaper/animals_squirrels_squirrel_xermy_eating_nut_cute_animal_desktop_3888x2592_wallpaper-442222.jpg",
    "http://upload.wikimedia.org/wikipedia/commons/4/4f/Sciurus_vulgaris_in_snow_-_Helsinki%2C_Finland.jpg",
    "http://images1.fanpop.com/images/image_uploads/Albino-squirrel-squirrels-855819_640_480.jpg",
    "http://images1.fanpop.com/images/photos/2100000/nananananana-super-squirell-squirrels-2112538-274-426.jpg"
]

module.exports = (robot) ->
  robot.hear /squirrel| i(am| 'm)emo/i, (msg) ->
      msg.send msg.random squirrel

