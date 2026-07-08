package androidx.appcompat.view.menu;

import androidx.appcompat.view.menu.f8;
import io.flutter.embedding.engine.FlutterJNI;
import io.flutter.view.a;
import java.util.HashMap;

/* loaded from: classes.dex */
public class z {
    public final f8 a;
    public final FlutterJNI b;
    public b c;
    public final f8.d d;

    public class a implements f8.d {
        public a() {
        }

        @Override // androidx.appcompat.view.menu.f8.d
        public void a(Object obj, f8.e eVar) {
            HashMap hashMap;
            HashMap hashMap2;
            if (z.this.c == null) {
                eVar.a(null);
                return;
            }
            hashMap = (HashMap) obj;
            String str = (String) hashMap.get("type");
            hashMap2 = (HashMap) hashMap.get("data");
            ea0.f("AccessibilityChannel", "Received " + str + " message.");
            str.hashCode();
            switch (str) {
                case "tooltip":
                    String str2 = (String) hashMap2.get("message");
                    if (str2 != null) {
                        z.this.c.d(str2);
                        break;
                    }
                    break;
                case "announce":
                    String str3 = (String) hashMap2.get("message");
                    if (str3 != null) {
                        z.this.c.a(str3);
                        break;
                    }
                    break;
                case "tap":
                    Integer num = (Integer) hashMap.get("nodeId");
                    if (num != null) {
                        z.this.c.g(num.intValue());
                        break;
                    }
                    break;
                case "focus":
                    Integer num2 = (Integer) hashMap.get("nodeId");
                    if (num2 != null) {
                        z.this.c.e(num2.intValue());
                        break;
                    }
                    break;
                case "longPress":
                    Integer num3 = (Integer) hashMap.get("nodeId");
                    if (num3 != null) {
                        z.this.c.f(num3.intValue());
                        break;
                    }
                    break;
            }
            eVar.a(null);
        }
    }

    public interface b extends FlutterJNI.a {
        void a(String str);

        void d(String str);

        void e(int i);

        void f(int i);

        void g(int i);
    }

    public z(si siVar, FlutterJNI flutterJNI) {
        a aVar = new a();
        this.d = aVar;
        f8 f8Var = new f8(siVar, "flutter/accessibility", pw0.a);
        this.a = f8Var;
        f8Var.e(aVar);
        this.b = flutterJNI;
    }

    public void b(int i, a.g gVar) {
        this.b.dispatchSemanticsAction(i, gVar);
    }

    public void c(int i, a.g gVar, Object obj) {
        this.b.dispatchSemanticsAction(i, gVar, obj);
    }

    public void d() {
        this.b.setSemanticsEnabled(false);
    }

    public void e() {
        this.b.setSemanticsEnabled(true);
    }

    public void f(int i) {
        this.b.setAccessibilityFeatures(i);
    }

    public void g(b bVar) {
        this.c = bVar;
        this.b.setAccessibilityDelegate(bVar);
    }
}
