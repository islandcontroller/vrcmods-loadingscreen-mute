using MelonLoader;
using UnityEngine;
using Islandc.Melon.VRCMods;
using VRChatUtilityKit.Utilities;

[assembly: MelonInfo(typeof(LoadscreenMuteMod), "Loadscreen Mute", "1.0.0", "islandc_")]
[assembly: MelonGame("VRChat", "VRChat")]

namespace Islandc.Melon.VRCMods
{
  public class LoadscreenMuteMod : MelonMod
  {
    /// <summary>
    /// Application start callback.
    /// Adds local callback for UI Manager init event
    /// </summary>
    public override void OnApplicationStart()
    {
      VRCUtils.OnUiManagerInit += OnUiManagerInit;
    }

    /// <summary>
    /// Paths to all GameObjects that contain the loading music AudioClip.
    /// </summary>
    private static string[] TargetPaths =
    {
      "UserInterface/LoadingBackground_TealGradient_Music/LoadingSound",
      "UserInterface/MenuContent/Popups/LoadingPopup/LoadingSound"
    };

    /// <summary>
    /// UI Manager Init callback.
    /// Disables all GameObjects containing the music AudioClip, as specified by <see cref="TargetPaths"/>
    /// </summary>
    private static void OnUiManagerInit()
    {
      foreach (var path in TargetPaths)
        GameObject.Find(path)?.SetActive(false);
    }
  }
}
