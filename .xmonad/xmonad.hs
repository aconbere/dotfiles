import XMonad
import XMonad.Hooks.DynamicLog
import XMonad.Hooks.ManageDocks
import XMonad.Hooks.UrgencyHook
import XMonad.Util.Run(spawnPipe)
import XMonad.Util.EZConfig(additionalKeys)
import System.IO

main = do
    xmproc <- spawnPipe "/home/aconbere/.cabal/bin/xmobar /home/aconbere/.xmobarrc"
    xmonad
        $ withUrgencyHook dzenUrgencyHook { args = ["-bg", "darkgreen", "-xs", "1"] }
        $ defaultConfig {
              terminal = "urxvt"
            , manageHook = manageDocks <+> manageHook defaultConfig
            , layoutHook = avoidStruts  $  layoutHook defaultConfig
            , logHook = dynamicLogWithPP xmobarPP
                            { ppOutput = hPutStrLn xmproc
                            , ppTitle = xmobarColor "green" "" . shorten 50
                            }
            } `additionalKeys` [
              ((mod4Mask .|. shiftMask, xK_z), spawn "xscreensaver-command -lock")
            ]
