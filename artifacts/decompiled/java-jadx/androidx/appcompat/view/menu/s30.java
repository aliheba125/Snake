package androidx.appcompat.view.menu;

import android.os.IBinder;
import java.lang.reflect.Method;

/* loaded from: classes.dex */
public class s30 extends j8 {
    public static final String q;

    static {
        if (y8.h()) {
            q = "vibrator_manager";
        } else {
            q = "vibrator";
        }
    }

    public s30() {
        super((IBinder) bt0.c.b(q));
    }

    @Override // androidx.appcompat.view.menu.j10
    public boolean a() {
        return false;
    }

    @Override // androidx.appcompat.view.menu.ob
    public Object h() {
        IBinder iBinder = (IBinder) bt0.c.b(q);
        return y8.h() ? q30.b.b(iBinder) : r30.b.b(iBinder);
    }

    @Override // androidx.appcompat.view.menu.ob
    public void i(Object obj, Object obj2) {
        l(q);
    }

    @Override // androidx.appcompat.view.menu.ob, java.lang.reflect.InvocationHandler
    public Object invoke(Object obj, Method method, Object[] objArr) {
        od0.g(objArr);
        od0.f(objArr);
        return super.invoke(obj, method, objArr);
    }
}
