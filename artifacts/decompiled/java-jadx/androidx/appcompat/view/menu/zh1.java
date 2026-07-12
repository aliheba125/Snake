package androidx.appcompat.view.menu;

import android.os.Looper;

/* loaded from: classes.dex */
public abstract class zh1 {
    public static volatile ClassLoader a;
    public static volatile Thread b;

    public static synchronized ClassLoader a() {
        ClassLoader classLoader;
        synchronized (zh1.class) {
            try {
                if (a == null) {
                    a = b();
                }
                classLoader = a;
            } catch (Throwable th) {
                throw th;
            }
        }
        return classLoader;
    }

    public static synchronized ClassLoader b() {
        synchronized (zh1.class) {
            ClassLoader classLoader = null;
            if (b == null) {
                b = c();
                if (b == null) {
                    return null;
                }
            }
            synchronized (b) {
                try {
                    classLoader = b.getContextClassLoader();
                } catch (SecurityException e) {
                    String message = e.getMessage();
                    StringBuilder sb = new StringBuilder();
                    sb.append("Failed to get thread context classloader ");
                    sb.append(message);
                }
            }
            return classLoader;
        }
    }

    public static synchronized Thread c() {
        SecurityException e;
        Thread thread;
        Thread thread2;
        ThreadGroup threadGroup;
        synchronized (zh1.class) {
            ThreadGroup threadGroup2 = Looper.getMainLooper().getThread().getThreadGroup();
            if (threadGroup2 == null) {
                return null;
            }
            synchronized (Void.class) {
                try {
                    try {
                        int activeGroupCount = threadGroup2.activeGroupCount();
                        ThreadGroup[] threadGroupArr = new ThreadGroup[activeGroupCount];
                        threadGroup2.enumerate(threadGroupArr);
                        int i = 0;
                        int i2 = 0;
                        while (true) {
                            if (i2 >= activeGroupCount) {
                                threadGroup = null;
                                break;
                            }
                            threadGroup = threadGroupArr[i2];
                            if ("dynamiteLoader".equals(threadGroup.getName())) {
                                break;
                            }
                            i2++;
                        }
                        if (threadGroup == null) {
                            threadGroup = new ThreadGroup(threadGroup2, "dynamiteLoader");
                        }
                        int activeCount = threadGroup.activeCount();
                        Thread[] threadArr = new Thread[activeCount];
                        threadGroup.enumerate(threadArr);
                        while (true) {
                            if (i >= activeCount) {
                                thread2 = null;
                                break;
                            }
                            thread2 = threadArr[i];
                            if ("GmsDynamite".equals(thread2.getName())) {
                                break;
                            }
                            i++;
                        }
                    } catch (Throwable th) {
                        throw th;
                    }
                } catch (SecurityException e2) {
                    e = e2;
                    thread = null;
                }
                if (thread2 == null) {
                    try {
                        thread = new pe1(threadGroup, "GmsDynamite");
                        try {
                            thread.setContextClassLoader(null);
                            thread.start();
                        } catch (SecurityException e3) {
                            e = e3;
                            String message = e.getMessage();
                            StringBuilder sb = new StringBuilder();
                            sb.append("Failed to enumerate thread/threadgroup ");
                            sb.append(message);
                            thread2 = thread;
                            return thread2;
                        }
                    } catch (SecurityException e4) {
                        e = e4;
                        thread = thread2;
                    }
                    thread2 = thread;
                }
            }
            return thread2;
        }
    }
}
