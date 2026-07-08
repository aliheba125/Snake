package androidx.appcompat.view.menu;

import android.content.Intent;
import android.content.pm.ActivityInfo;
import android.content.pm.PackageManager;
import android.content.pm.ResolveInfo;
import android.os.Build;
import androidx.appcompat.view.menu.kd0;
import androidx.appcompat.view.menu.ut;
import androidx.appcompat.view.menu.zj0;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/* loaded from: classes.dex */
public class ck0 implements ut, d1, cj0, zj0.b {
    public final zj0 a;
    public final PackageManager b;
    public o1 c;
    public Map d;
    public Map e = new HashMap();

    public ck0(zj0 zj0Var) {
        this.a = zj0Var;
        this.b = zj0Var.b;
        zj0Var.b(this);
    }

    @Override // androidx.appcompat.view.menu.cj0
    public boolean a(int i, int i2, Intent intent) {
        if (!this.e.containsKey(Integer.valueOf(i))) {
            return false;
        }
        ((kd0.d) this.e.remove(Integer.valueOf(i))).c(i2 == -1 ? intent.getStringExtra("android.intent.extra.PROCESS_TEXT") : null);
        return true;
    }

    @Override // androidx.appcompat.view.menu.d1
    public void b(o1 o1Var) {
        this.c = o1Var;
        o1Var.e(this);
    }

    @Override // androidx.appcompat.view.menu.d1
    public void c() {
        this.c.f(this);
        this.c = null;
    }

    @Override // androidx.appcompat.view.menu.zj0.b
    public Map d() {
        if (this.d == null) {
            j();
        }
        HashMap hashMap = new HashMap();
        for (String str : this.d.keySet()) {
            hashMap.put(str, ((ResolveInfo) this.d.get(str)).loadLabel(this.b).toString());
        }
        return hashMap;
    }

    @Override // androidx.appcompat.view.menu.zj0.b
    public void e(String str, String str2, boolean z, kd0.d dVar) {
        if (this.c == null) {
            dVar.b("error", "Plugin not bound to an Activity", null);
            return;
        }
        Map map = this.d;
        if (map == null) {
            dVar.b("error", "Can not process text actions before calling queryTextActions", null);
            return;
        }
        ResolveInfo resolveInfo = (ResolveInfo) map.get(str);
        if (resolveInfo == null) {
            dVar.b("error", "Text processing activity not found", null);
            return;
        }
        Integer valueOf = Integer.valueOf(dVar.hashCode());
        this.e.put(valueOf, dVar);
        Intent intent = new Intent();
        ActivityInfo activityInfo = resolveInfo.activityInfo;
        intent.setClassName(activityInfo.packageName, activityInfo.name);
        intent.setAction("android.intent.action.PROCESS_TEXT");
        intent.setType("text/plain");
        intent.putExtra("android.intent.extra.PROCESS_TEXT", str2);
        intent.putExtra("android.intent.extra.PROCESS_TEXT_READONLY", z);
        this.c.d().startActivityForResult(intent, valueOf.intValue());
    }

    @Override // androidx.appcompat.view.menu.ut
    public void f(ut.b bVar) {
    }

    @Override // androidx.appcompat.view.menu.d1
    public void g(o1 o1Var) {
        this.c = o1Var;
        o1Var.e(this);
    }

    @Override // androidx.appcompat.view.menu.ut
    public void h(ut.b bVar) {
    }

    @Override // androidx.appcompat.view.menu.d1
    public void i() {
        this.c.f(this);
        this.c = null;
    }

    public final void j() {
        List<ResolveInfo> queryIntentActivities;
        PackageManager.ResolveInfoFlags of;
        this.d = new HashMap();
        int i = Build.VERSION.SDK_INT;
        Intent type = new Intent().setAction("android.intent.action.PROCESS_TEXT").setType("text/plain");
        if (i >= 33) {
            PackageManager packageManager = this.b;
            of = PackageManager.ResolveInfoFlags.of(0L);
            queryIntentActivities = packageManager.queryIntentActivities(type, of);
        } else {
            queryIntentActivities = this.b.queryIntentActivities(type, 0);
        }
        for (ResolveInfo resolveInfo : queryIntentActivities) {
            String str = resolveInfo.activityInfo.name;
            resolveInfo.loadLabel(this.b).toString();
            this.d.put(str, resolveInfo);
        }
    }
}
