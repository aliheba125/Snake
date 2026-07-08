package androidx.appcompat.view.menu;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Typeface;
import android.os.CancellationSignal;
import androidx.appcompat.view.menu.vu;
import androidx.appcompat.view.menu.wu;
import java.io.File;
import java.util.concurrent.ConcurrentHashMap;

/* loaded from: classes.dex */
public abstract class x21 {
    public ConcurrentHashMap a = new ConcurrentHashMap();

    public class a implements b {
        public a() {
        }

        @Override // androidx.appcompat.view.menu.x21.b
        /* renamed from: c, reason: merged with bridge method [inline-methods] */
        public int a(wu.b bVar) {
            return bVar.e();
        }

        @Override // androidx.appcompat.view.menu.x21.b
        /* renamed from: d, reason: merged with bridge method [inline-methods] */
        public boolean b(wu.b bVar) {
            return bVar.f();
        }
    }

    public interface b {
        int a(Object obj);

        boolean b(Object obj);
    }

    public static Object d(Object[] objArr, int i, b bVar) {
        return e(objArr, (i & 1) == 0 ? 400 : 700, (i & 2) != 0, bVar);
    }

    public static Object e(Object[] objArr, int i, boolean z, b bVar) {
        Object obj = null;
        int i2 = Integer.MAX_VALUE;
        for (Object obj2 : objArr) {
            int abs = (Math.abs(bVar.a(obj2) - i) * 2) + (bVar.b(obj2) == z ? 0 : 1);
            if (obj == null || i2 > abs) {
                obj = obj2;
                i2 = abs;
            }
        }
        return obj;
    }

    public abstract Typeface a(Context context, vu.c cVar, Resources resources, int i);

    public abstract Typeface b(Context context, CancellationSignal cancellationSignal, wu.b[] bVarArr, int i);

    public Typeface c(Context context, Resources resources, int i, String str, int i2) {
        File d = y21.d(context);
        if (d == null) {
            return null;
        }
        try {
            if (y21.b(d, resources, i)) {
                return Typeface.createFromFile(d.getPath());
            }
            return null;
        } catch (RuntimeException unused) {
            return null;
        } finally {
            d.delete();
        }
    }

    public wu.b f(wu.b[] bVarArr, int i) {
        return (wu.b) d(bVarArr, i, new a());
    }
}
