FL_DISABLE = 0
FL_ENABLE = 1

flgraylist = {}
flgraylist.maps = {}

-- Can either disable or enable flashlights by default on maps.
-- FL_ENABLE to allow flashlights on maps by default.
-- FL_DISABLE to disallow flashlights on maps by default.
flgraylist.default_action = FL_ENABLE

-- If the map is in both, or neither, of the tables "flgraylist.maps.disable" and "flgraylist.maps.enable",
-- then the default_action is followed

-- Add maps here to disable the flashlights on.
flgraylist.maps.disable = {
	"ttt_vangogh",
	"arghhh",
	"zuhhh",
	"de_aztec_csgo",
	"blahhh",
}

-- Add maps here to enable the flashlights on.
flgraylist.maps.enable = {

}
