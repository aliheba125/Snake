package androidx.appcompat.view.menu;

import android.view.KeyEvent;
import androidx.appcompat.view.menu.f8;
import androidx.appcompat.view.menu.y70;
import java.util.HashMap;
import java.util.Map;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes.dex */
public class y70 {
    public final f8 a;

    public interface a {
        void a(boolean z);
    }

    public static class b {
        public final KeyEvent a;
        public final Character b;

        public b(KeyEvent keyEvent, Character ch) {
            this.a = keyEvent;
            this.b = ch;
        }
    }

    public y70(i8 i8Var) {
        this.a = new f8(i8Var, "flutter/keyevent", m60.a);
    }

    public static f8.e b(final a aVar) {
        return new f8.e() { // from class: androidx.appcompat.view.menu.x70
            @Override // androidx.appcompat.view.menu.f8.e
            public final void a(Object obj) {
                y70.d(y70.a.this, obj);
            }
        };
    }

    public static /* synthetic */ void d(a aVar, Object obj) {
        boolean z = false;
        if (obj != null) {
            try {
                z = ((JSONObject) obj).getBoolean("handled");
            } catch (JSONException e) {
                ea0.b("KeyEventChannel", "Unable to unpack JSON message: " + e);
            }
        }
        aVar.a(z);
    }

    public final Map c(b bVar, boolean z) {
        HashMap hashMap = new HashMap();
        hashMap.put("type", z ? "keyup" : "keydown");
        hashMap.put("keymap", "android");
        hashMap.put("flags", Integer.valueOf(bVar.a.getFlags()));
        hashMap.put("plainCodePoint", Integer.valueOf(bVar.a.getUnicodeChar(0)));
        hashMap.put("codePoint", Integer.valueOf(bVar.a.getUnicodeChar()));
        hashMap.put("keyCode", Integer.valueOf(bVar.a.getKeyCode()));
        hashMap.put("scanCode", Integer.valueOf(bVar.a.getScanCode()));
        hashMap.put("metaState", Integer.valueOf(bVar.a.getMetaState()));
        Character ch = bVar.b;
        if (ch != null) {
            hashMap.put("character", ch.toString());
        }
        hashMap.put("source", Integer.valueOf(bVar.a.getSource()));
        hashMap.put("deviceId", Integer.valueOf(bVar.a.getDeviceId()));
        hashMap.put("repeatCount", Integer.valueOf(bVar.a.getRepeatCount()));
        return hashMap;
    }

    public void e(b bVar, boolean z, a aVar) {
        this.a.d(c(bVar, z), b(aVar));
    }
}
