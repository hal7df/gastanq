.pragma library

function dp (screen, dp_) {
    return (dp_ * (screen.pixelDensity * 25.4)) / 160.;
}

function px (screen, px_) {
    return (px_ * 160) / (screen.pixelDensity * 25.4);
}
