/*
 * SPDX-FileCopyrightText: 2019 Nicolas Fella <nicolas.fella@gmx.de>
 *
 * SPDX-License-Identifier: GPL-2.0-only OR GPL-3.0-only OR LicenseRef-KDE-Accepted-GPL
 */

import QtQuick 2.2
import QtQuick.Controls 2.2
import org.kde.kirigami 2.0 as Kirigami

Kirigami.Page
{
    id: root
    property string configFile
    property string device

    actions.main: loader.item.action

    onConfigFileChanged: {
        loader.setSource(configFile, {
            device: root.device
        })
    }

    Loader {
        anchors.fill: parent
        id: loader
        Component.onCompleted: {
            setSource(configFile, {
                device: root.device
            })
        }
    }
}



