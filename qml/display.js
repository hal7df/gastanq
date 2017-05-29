.pragma library

function px (screen, dp_) {
    return (dp_ * (screen.pixelDensity * 25.4)) / 160.;
}

function dp (screen, px_) {
    return (px_ * 160) / (screen.pixelDensity * 25.4);
}

function getIcon (container, iconName) {
    var dir = "qrc:/img/";

    if (container.height <= 24) dir += "mdpi/";
    else if (container.height <= 36) dir += "hdpi/";
    else if (container.height <= 48) dir += "xhdpi/";
    else if (container.height <= 72) dir += "xxhdpi/";
    else dir += "xxxhdpi/";

    console.log(dir, iconName, container.height);

    return (dir + "ic_" + iconName + ".png");
}
