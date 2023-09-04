/**
 * GNOME Shell extension to hide the Activities button from the status bar.
 *
 * Originally Created by Shay Elkin <shay@shayel.org>
 * Updated by zeten30@gmail.com up to GNOME version 44
 * Completely rewritten from scratch for GNOME 45+
 *
 **/

import * as Main from "resource:///org/gnome/shell/ui/main.js";

export default class HideActivitiesButtonExtension {
  enable() {
    // Hide button
    if (Main.panel.statusArea["activities"] != null) {
      Main.panel.statusArea["activities"].hide();
    }
  }

  disable() {
    // Show button
    if (Main.panel.statusArea["activities"] != null) {
      Main.panel.statusArea["activities"].show();
    }
  }
}
