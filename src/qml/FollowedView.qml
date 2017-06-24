/*
 * Copyright © 2015-2016 Antti Lamminsalo
 *
 * This file is part of Orion.
 *
 * Orion is free software: you can redistribute it and/or modify
 * it under the terms of the GNU General Public License as published by
 * the Free Software Foundation, either version 3 of the License, or
 * (at your option) any later version.
 *
 * You should have received a copy of the GNU General Public License
 * along with Orion.  If not, see <http://www.gnu.org/licenses/>.
 */

import QtQuick 2.5
import app.orion 1.0
import "components"

Item {
    onVisibleChanged: {
        if (visible) {
            ChannelManager.getFollowedChannels()
        }
    }

    ChannelGrid {
        id: favourites

        showFavIcons: false

        anchors {
            fill: parent
        }

        model: g_favourites
    }
}

