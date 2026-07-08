package androidx.appcompat.view.menu;

import android.net.Uri;
import java.util.Map;

/* loaded from: classes.dex */
public final class te1 extends Thread {
    public final /* synthetic */ Map m;

    public te1(y1 y1Var, Map map) {
        this.m = map;
    }

    @Override // java.lang.Thread, java.lang.Runnable
    public final void run() {
        Map map = this.m;
        Uri.Builder buildUpon = Uri.parse("https://pagead2.googlesyndication.com/pagead/gen_204?id=gmob-apps").buildUpon();
        for (String str : map.keySet()) {
            buildUpon.appendQueryParameter(str, (String) map.get(str));
        }
        qk1.a(buildUpon.build().toString());
    }
}
