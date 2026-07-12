package androidx.appcompat.view.menu;

import androidx.appcompat.view.menu.q02;

/* loaded from: classes.dex */
public final class t02 implements y32 {
    public static final t02 a = new t02();

    public static t02 c() {
        return a;
    }

    @Override // androidx.appcompat.view.menu.y32
    public final s32 a(Class cls) {
        if (!q02.class.isAssignableFrom(cls)) {
            throw new IllegalArgumentException("Unsupported message type: " + cls.getName());
        }
        try {
            return (s32) q02.n(cls.asSubclass(q02.class)).q(q02.c.c, null, null);
        } catch (Exception e) {
            throw new RuntimeException("Unable to get message info for " + cls.getName(), e);
        }
    }

    @Override // androidx.appcompat.view.menu.y32
    public final boolean b(Class cls) {
        return q02.class.isAssignableFrom(cls);
    }
}
