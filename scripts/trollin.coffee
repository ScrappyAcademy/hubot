# Description:
#   Hubot will troll people randomly (even itself)
#
# Dependencies:
#   None
#
# Configuration:
#   None
#
# Commands:
#   Nothing just talk
#
# Author:
#   cupakromer

trolls = [
  ":trollface: :trollface: :trollface: :trollface: :trollface: :trollface: :trollface: :trollface: :trollface: :trollface: :trollface: :trollface: :trollface: :trollface: :trollface: :trollface: :trollface: :trollface: :trollface: :trollface: :trollface:",
  "http://images5.fanpop.com/image/photos/28500000/They-see-me-trollin-They-hatin-chocoluvr101-28557270-300-333.png",
  "http://img1.joyreactor.com/pics/post/demotivation-posters-auto-344251.jpeg",
  "http://cdn.memegenerator.net/instances/400x/24985000.jpg",
  "http://ct.fra.bz/ol/fz/sw/i51/5/5/4/frabz-They-see-me-trollin-they-hatin-895e35.jpg",
  "http://rlv.zcache.co.uk/they_see_me_trollin_they_hatin_speckcase-p176089345251326001en8cx_216.jpg",
  "https://i.chzbgr.com/maxW500/6586469376/h8B70ECD1/",
  "http://1.bp.blogspot.com/_19PO40AlFUY/TGT0iHPOysI/AAAAAAAAAKY/KmIttVHh1mI/s1600/singlelobsterfuck.jpg",
  "http://i190.photobucket.com/albums/z316/ebonobelisk/troll1.jpg",
  "http://fc05.deviantart.net/fs71/f/2011/167/9/1/sir_troll_cat_was_here_by_jesf-d3j43q2.jpg"
]

troll_sounds = ["trololo", "nyan", "yodel"]

module.exports = (robot) ->
  one_in = (upper_limit) -> 1 == Math.floor(Math.random() * upper_limit)

  robot.hear /./i, (msg) ->
    msg.send msg.random trolls if one_in(100)
    msg.play msg.random(troll_sounds) if one_in(40)
