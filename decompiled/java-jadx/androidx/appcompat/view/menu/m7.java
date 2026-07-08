package androidx.appcompat.view.menu;

import android.window.BackEvent;
import androidx.appcompat.view.menu.kd0;
import java.util.Arrays;
import java.util.HashMap;
import java.util.Map;

/* loaded from: classes.dex */
public class m7 {
    public final kd0 a;
    public final kd0.c b;

    public class a implements kd0.c {
        public a() {
        }

        @Override // androidx.appcompat.view.menu.kd0.c
        public void C(id0 id0Var, kd0.d dVar) {
            dVar.c(null);
        }
    }

    public m7(si siVar) {
        a aVar = new a();
        this.b = aVar;
        kd0 kd0Var = new kd0(siVar, "flutter/backgesture", qw0.b);
        this.a = kd0Var;
        kd0Var.e(aVar);
    }

    public final Map a(BackEvent backEvent) {
        float touchX;
        float touchY;
        float progress;
        int swipeEdge;
        HashMap hashMap = new HashMap(3);
        touchX = backEvent.getTouchX();
        touchY = backEvent.getTouchY();
        hashMap.put("touchOffset", (Float.isNaN(touchX) || Float.isNaN(touchY)) ? null : Arrays.asList(Float.valueOf(touchX), Float.valueOf(touchY)));
        progress = backEvent.getProgress();
        hashMap.put("progress", Float.valueOf(progress));
        swipeEdge = backEvent.getSwipeEdge();
        hashMap.put("swipeEdge", Integer.valueOf(swipeEdge));
        return hashMap;
    }

    public void b() {
        ea0.f("BackGestureChannel", "Sending message to cancel back gesture");
        this.a.c("cancelBackGesture", null);
    }

    public void c() {
        ea0.f("BackGestureChannel", "Sending message to commit back gesture");
        this.a.c("commitBackGesture", null);
    }

    public void d(BackEvent backEvent) {
        ea0.f("BackGestureChannel", "Sending message to start back gesture");
        this.a.c("startBackGesture", a(backEvent));
    }

    public void e(BackEvent backEvent) {
        ea0.f("BackGestureChannel", "Sending message to update back gesture progress");
        this.a.c("updateBackGestureProgress", a(backEvent));
    }
}
