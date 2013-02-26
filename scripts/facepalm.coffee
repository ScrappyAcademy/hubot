# Description:
#   Post an actual facepalm whenever some mentions it.
#
# Dependencies:
#   None
#
# Configuration:
#   None
#
# Commands:
#   facepalm
#
# Author:
#   cupakromer

facepalms = [
  "http://media.tumblr.com/7b32e336b10589b678c5fafda8a4cace/tumblr_inline_mi2kfhtKhY1qz4rgp.gif",
  "http://images2.wikia.nocookie.net/__cb20121110220608/adventuretimewithfinnandjake/images/e/e6/Facepalm100000000.gif",
  "http://images.wikia.com/glee/images/a/a7/Draco-malfoy-facepalm.gif",
  "http://images.wikia.com/theamazingworldofgumball/images/8/8d/1260528522_itcrowd-facepalm.gif",
  "http://static.divbyzero.nl/facepalm/doublefacepalm.jpg",
  "http://images4.alphacoders.com/146/146716.jpg",
  "http://fc00.deviantart.net/fs71/i/2011/184/b/9/triple_facepalm_by_spottedheart98464-d3kuyp3.png",
  "http://fc03.deviantart.net/fs22/f/2009/242/9/2/Sigh_Facepalm_____by_Ghost1334652.jpg",
  "http://images4.fanpop.com/image/photos/19800000/-Facepalm-lunashay-19892493-750-600.jpg",
  "http://www.theparentingdad.com/wp-content/uploads/2012/08/baby-facepalm.jpg",
  "http://images5.fanpop.com/image/photos/30300000/Godzilla-Facepalm-godzilla-30354011-640-387.jpg",
  "http://fc02.deviantart.net/fs71/i/2013/018/e/e/inner_facepalm_demotivational_by_senkkari-d5rdzlu.png",
  "http://fc05.deviantart.net/fs50/f/2009/317/a/2/Peach_Facepalm_by_Finalsmasher.jpg",
  "http://fc09.deviantart.net/fs50/f/2009/330/2/a/Facepalm_by_iceman_3567.jpg",
  "http://fc09.deviantart.net/fs71/f/2012/067/d/2/bunny_facepalm_by_shlj23-d4s3yaj.jpg",
  "http://static.fjcdn.com/pictures/Super+facepalm_db95e1_3420603.jpg",
  "http://likegif.com/wp-content/uploads/2012/10/facepalm-gif-33.gif",
  "http://25.media.tumblr.com/tumblr_m0f3b7mqFY1qh2o7zo1_500.gif",
  "http://saxsociety.com/forum/avatars/facepalm-text-picture-8110.jpg",
  "http://onwardstate.com/wp-content/uploads/2010/01/Lion-facepalm.jpg",
  "http://cat.facepalm.de/images/facepalm.jpg",
  "http://i.qkme.me/35623p.jpg",
  "http://assets.motivationalgenerator.com/hashed_silo_content/638/92b/d10/resized/vegeta-facepalm-because-your-fail-is-out-of-this-world-2c1d32.jpg",
  "http://i895.photobucket.com/albums/ac159/GIFsforhire/Movies-Shows/Doctor%20Who/FACEPALM.gif",
  "http://i268.photobucket.com/albums/jj37/moochie_bean/Gif%20Stock/facepalm.gif"
]

module.exports = (robot) ->
  robot.hear /facepalm/i, (msg) ->
    msg.send msg.random facepalms
