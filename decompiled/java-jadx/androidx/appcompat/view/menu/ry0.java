package androidx.appcompat.view.menu;

import java.util.HashMap;

/* loaded from: classes.dex */
public class ry0 {
    public final f8 a;

    public ry0(si siVar) {
        this.a = new f8(siVar, "flutter/system", m60.a);
    }

    public void a() {
        ea0.f("SystemChannel", "Sending memory pressure warning to Flutter.");
        HashMap hashMap = new HashMap(1);
        hashMap.put("type", "memoryPressure");
        this.a.c(hashMap);
    }
}
