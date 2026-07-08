package androidx.appcompat.view.menu;

import androidx.appcompat.view.menu.kd0;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes.dex */
public class s90 {
    public final kd0 a;
    public b b;
    public final kd0.c c;

    public class a implements kd0.c {
        public a() {
        }

        @Override // androidx.appcompat.view.menu.kd0.c
        public void C(id0 id0Var, kd0.d dVar) {
            if (s90.this.b == null) {
                return;
            }
            String str = id0Var.a;
            str.hashCode();
            if (!str.equals("Localization.getStringResource")) {
                dVar.a();
                return;
            }
            JSONObject jSONObject = (JSONObject) id0Var.b();
            try {
                dVar.c(s90.this.b.a(jSONObject.getString("key"), jSONObject.has("locale") ? jSONObject.getString("locale") : null));
            } catch (JSONException e) {
                dVar.b("error", e.getMessage(), null);
            }
        }
    }

    public interface b {
        String a(String str, String str2);
    }

    public s90(si siVar) {
        a aVar = new a();
        this.c = aVar;
        kd0 kd0Var = new kd0(siVar, "flutter/localization", n60.a);
        this.a = kd0Var;
        kd0Var.e(aVar);
    }

    public void b(List list) {
        ea0.f("LocalizationChannel", "Sending Locales to Flutter.");
        ArrayList arrayList = new ArrayList();
        Iterator it = list.iterator();
        while (it.hasNext()) {
            Locale locale = (Locale) it.next();
            ea0.f("LocalizationChannel", "Locale (Language: " + locale.getLanguage() + ", Country: " + locale.getCountry() + ", Variant: " + locale.getVariant() + ")");
            arrayList.add(locale.getLanguage());
            arrayList.add(locale.getCountry());
            arrayList.add(locale.getScript());
            arrayList.add(locale.getVariant());
        }
        this.a.c("setLocale", arrayList);
    }

    public void c(b bVar) {
        this.b = bVar;
    }
}
