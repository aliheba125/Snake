package androidx.appcompat.view.menu;

import java.net.URL;
import java.net.URLConnection;

/* loaded from: classes.dex */
public final class el1 extends yk1 {
    @Override // androidx.appcompat.view.menu.yk1
    public final URLConnection b(URL url, String str) {
        return url.openConnection();
    }

    public el1() {
    }
}
