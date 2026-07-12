package androidx.appcompat.view.menu;

/* loaded from: classes.dex */
public abstract class hi0 {
    public static final gi0 a;

    static {
        gi0 gi0Var;
        Object newInstance;
        try {
            newInstance = l60.class.newInstance();
            z50.d(newInstance, "forName(\"kotlin.internal…entations\").newInstance()");
            try {
                try {
                } catch (ClassNotFoundException unused) {
                    Object newInstance2 = k60.class.newInstance();
                    z50.d(newInstance2, "forName(\"kotlin.internal…entations\").newInstance()");
                    try {
                        try {
                            if (newInstance2 == null) {
                                throw new NullPointerException("null cannot be cast to non-null type kotlin.internal.PlatformImplementations");
                            }
                            gi0Var = (gi0) newInstance2;
                        } catch (ClassCastException e) {
                            ClassLoader classLoader = newInstance2.getClass().getClassLoader();
                            ClassLoader classLoader2 = gi0.class.getClassLoader();
                            if (z50.a(classLoader, classLoader2)) {
                                throw e;
                            }
                            throw new ClassNotFoundException("Instance class was loaded from a different classloader: " + classLoader + ", base type classloader: " + classLoader2, e);
                        }
                    } catch (ClassNotFoundException unused2) {
                        gi0Var = new gi0();
                    }
                }
            } catch (ClassCastException e2) {
                ClassLoader classLoader3 = newInstance.getClass().getClassLoader();
                ClassLoader classLoader4 = gi0.class.getClassLoader();
                if (z50.a(classLoader3, classLoader4)) {
                    throw e2;
                }
                throw new ClassNotFoundException("Instance class was loaded from a different classloader: " + classLoader3 + ", base type classloader: " + classLoader4, e2);
            }
        } catch (ClassNotFoundException unused3) {
            Object newInstance3 = Class.forName("kotlin.internal.JRE8PlatformImplementations").newInstance();
            z50.d(newInstance3, "forName(\"kotlin.internal…entations\").newInstance()");
            try {
                try {
                    if (newInstance3 == null) {
                        throw new NullPointerException("null cannot be cast to non-null type kotlin.internal.PlatformImplementations");
                    }
                    gi0Var = (gi0) newInstance3;
                } catch (ClassCastException e3) {
                    ClassLoader classLoader5 = newInstance3.getClass().getClassLoader();
                    ClassLoader classLoader6 = gi0.class.getClassLoader();
                    if (z50.a(classLoader5, classLoader6)) {
                        throw e3;
                    }
                    throw new ClassNotFoundException("Instance class was loaded from a different classloader: " + classLoader5 + ", base type classloader: " + classLoader6, e3);
                }
            } catch (ClassNotFoundException unused4) {
                Object newInstance4 = Class.forName("kotlin.internal.JRE7PlatformImplementations").newInstance();
                z50.d(newInstance4, "forName(\"kotlin.internal…entations\").newInstance()");
                try {
                    if (newInstance4 == null) {
                        throw new NullPointerException("null cannot be cast to non-null type kotlin.internal.PlatformImplementations");
                    }
                    gi0Var = (gi0) newInstance4;
                } catch (ClassCastException e4) {
                    ClassLoader classLoader7 = newInstance4.getClass().getClassLoader();
                    ClassLoader classLoader8 = gi0.class.getClassLoader();
                    if (z50.a(classLoader7, classLoader8)) {
                        throw e4;
                    }
                    throw new ClassNotFoundException("Instance class was loaded from a different classloader: " + classLoader7 + ", base type classloader: " + classLoader8, e4);
                }
            }
        }
        if (newInstance == null) {
            throw new NullPointerException("null cannot be cast to non-null type kotlin.internal.PlatformImplementations");
        }
        gi0Var = (gi0) newInstance;
        a = gi0Var;
    }
}
