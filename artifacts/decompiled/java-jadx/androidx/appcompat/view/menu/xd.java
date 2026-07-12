package androidx.appcompat.view.menu;

import java.util.Set;

/* loaded from: classes.dex */
public interface xd {
    default Object a(Class cls) {
        return e(ul0.b(cls));
    }

    el0 b(ul0 ul0Var);

    default Set c(Class cls) {
        return f(ul0.b(cls));
    }

    default el0 d(Class cls) {
        return b(ul0.b(cls));
    }

    default Object e(ul0 ul0Var) {
        el0 b = b(ul0Var);
        if (b == null) {
            return null;
        }
        return b.get();
    }

    default Set f(ul0 ul0Var) {
        return (Set) g(ul0Var).get();
    }

    el0 g(ul0 ul0Var);
}
