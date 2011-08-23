import XMonad
import XMonad.Config.Gnome
import XMonad.Actions.GridSelect
import XMonad.Util.EZConfig

--main = xmonad $ defaultConfig { terminal = "urxvt" }
main = xmonad $ gnomeConfig { terminal = "urxvt" }
                `additionalKeys`
                    [ ((mod1Mask, xK_g), goToSelected defaultGSConfig) ]
