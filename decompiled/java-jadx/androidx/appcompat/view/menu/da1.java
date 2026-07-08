package androidx.appcompat.view.menu;

import android.app.Activity;
import android.content.Context;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.graphics.Point;
import android.graphics.Rect;
import android.inputmethodservice.InputMethodService;
import android.os.Build;
import android.view.Display;
import android.view.DisplayCutout;
import android.view.WindowManager;
import androidx.appcompat.view.menu.y81;
import java.lang.reflect.Constructor;
import java.lang.reflect.Field;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.ArrayList;

/* loaded from: classes.dex */
public final class da1 implements ca1 {
    public static final da1 b = new da1();
    public static final String c;
    public static final ArrayList d;

    static {
        ArrayList c2;
        String simpleName = da1.class.getSimpleName();
        z50.d(simpleName, "WindowMetricsCalculatorC…at::class.java.simpleName");
        c = simpleName;
        c2 = sc.c(Integer.valueOf(y81.m.g()), Integer.valueOf(y81.m.f()), Integer.valueOf(y81.m.a()), Integer.valueOf(y81.m.c()), Integer.valueOf(y81.m.i()), Integer.valueOf(y81.m.e()), Integer.valueOf(y81.m.j()), Integer.valueOf(y81.m.b()));
        d = c2;
    }

    @Override // androidx.appcompat.view.menu.ca1
    public ba1 a(Activity activity) {
        z50.e(activity, "activity");
        return e(activity);
    }

    public ba1 c(Activity activity) {
        y81 a;
        z50.e(activity, "activity");
        int i = Build.VERSION.SDK_INT;
        Rect a2 = i >= 30 ? sg.a.a(activity) : i >= 29 ? g(activity) : f(activity);
        if (i >= 30) {
            a = h(activity);
        } else {
            a = new y81.b().a();
            z50.d(a, "{\n            WindowInse…ilder().build()\n        }");
        }
        return new ba1(new q8(a2), a);
    }

    public ba1 d(Context context) {
        z50.e(context, "context");
        if (Build.VERSION.SDK_INT >= 30) {
            return sg.a.c(context);
        }
        Context a = ng.a.a(context);
        if (a instanceof Activity) {
            return c((Activity) context);
        }
        if (!(a instanceof InputMethodService)) {
            throw new IllegalArgumentException(context + " is not a UiContext");
        }
        Object systemService = context.getSystemService("window");
        z50.c(systemService, "null cannot be cast to non-null type android.view.WindowManager");
        Display defaultDisplay = ((WindowManager) systemService).getDefaultDisplay();
        z50.d(defaultDisplay, "wm.defaultDisplay");
        Point k = k(defaultDisplay);
        return new ba1(new Rect(0, 0, k.x, k.y), null, 2, null);
    }

    public ba1 e(Context context) {
        Rect rect;
        y81 a;
        z50.e(context, "context");
        int i = Build.VERSION.SDK_INT;
        if (i >= 30) {
            rect = sg.a.d(context);
        } else {
            Object systemService = context.getSystemService("window");
            z50.c(systemService, "null cannot be cast to non-null type android.view.WindowManager");
            Display defaultDisplay = ((WindowManager) systemService).getDefaultDisplay();
            z50.d(defaultDisplay, "display");
            Point k = k(defaultDisplay);
            rect = new Rect(0, 0, k.x, k.y);
        }
        if (i >= 30) {
            a = h(context);
        } else {
            a = new y81.b().a();
            z50.d(a, "{\n            WindowInse…ilder().build()\n        }");
        }
        return new ba1(new q8(rect), a);
    }

    public final Rect f(Activity activity) {
        DisplayCutout i;
        z50.e(activity, "activity");
        Rect rect = new Rect();
        Configuration configuration = activity.getResources().getConfiguration();
        try {
            Field declaredField = Configuration.class.getDeclaredField("windowConfiguration");
            declaredField.setAccessible(true);
            Object obj = declaredField.get(configuration);
            if (h1.a.a(activity)) {
                Object invoke = obj.getClass().getDeclaredMethod("getBounds", new Class[0]).invoke(obj, new Object[0]);
                z50.c(invoke, "null cannot be cast to non-null type android.graphics.Rect");
                rect.set((Rect) invoke);
            } else {
                Object invoke2 = obj.getClass().getDeclaredMethod("getAppBounds", new Class[0]).invoke(obj, new Object[0]);
                z50.c(invoke2, "null cannot be cast to non-null type android.graphics.Rect");
                rect.set((Rect) invoke2);
            }
        } catch (IllegalAccessException unused) {
            l(activity, rect);
        } catch (NoSuchFieldException unused2) {
            l(activity, rect);
        } catch (NoSuchMethodException unused3) {
            l(activity, rect);
        } catch (InvocationTargetException unused4) {
            l(activity, rect);
        }
        Display defaultDisplay = activity.getWindowManager().getDefaultDisplay();
        Point point = new Point();
        gm gmVar = gm.a;
        z50.d(defaultDisplay, "currentDisplay");
        gmVar.a(defaultDisplay, point);
        h1 h1Var = h1.a;
        if (!h1Var.a(activity)) {
            int j = j(activity);
            int i2 = rect.bottom;
            if (i2 + j == point.y) {
                rect.bottom = i2 + j;
            } else {
                int i3 = rect.right;
                if (i3 + j == point.x) {
                    rect.right = i3 + j;
                } else if (rect.left == j) {
                    rect.left = 0;
                }
            }
        }
        if ((rect.width() < point.x || rect.height() < point.y) && !h1Var.a(activity) && (i = i(defaultDisplay)) != null) {
            int i4 = rect.left;
            hm hmVar = hm.a;
            if (i4 == hmVar.b(i)) {
                rect.left = 0;
            }
            if (point.x - rect.right == hmVar.c(i)) {
                rect.right += hmVar.c(i);
            }
            if (rect.top == hmVar.d(i)) {
                rect.top = 0;
            }
            if (point.y - rect.bottom == hmVar.a(i)) {
                rect.bottom += hmVar.a(i);
            }
        }
        return rect;
    }

    public final Rect g(Activity activity) {
        z50.e(activity, "activity");
        Configuration configuration = activity.getResources().getConfiguration();
        try {
            Field declaredField = Configuration.class.getDeclaredField("windowConfiguration");
            declaredField.setAccessible(true);
            Object obj = declaredField.get(configuration);
            Object invoke = obj.getClass().getDeclaredMethod("getBounds", new Class[0]).invoke(obj, new Object[0]);
            z50.c(invoke, "null cannot be cast to non-null type android.graphics.Rect");
            return new Rect((Rect) invoke);
        } catch (IllegalAccessException unused) {
            return f(activity);
        } catch (NoSuchFieldException unused2) {
            return f(activity);
        } catch (NoSuchMethodException unused3) {
            return f(activity);
        } catch (InvocationTargetException unused4) {
            return f(activity);
        }
    }

    public final y81 h(Context context) {
        z50.e(context, "context");
        if (Build.VERSION.SDK_INT >= 30) {
            return sg.a.b(context);
        }
        throw new Exception("Incompatible SDK version");
    }

    public final DisplayCutout i(Display display) {
        try {
            Constructor<?> constructor = Class.forName("android.view.DisplayInfo").getConstructor(new Class[0]);
            constructor.setAccessible(true);
            Object newInstance = constructor.newInstance(new Object[0]);
            Method declaredMethod = display.getClass().getDeclaredMethod("getDisplayInfo", newInstance.getClass());
            declaredMethod.setAccessible(true);
            declaredMethod.invoke(display, newInstance);
            Field declaredField = newInstance.getClass().getDeclaredField("displayCutout");
            declaredField.setAccessible(true);
            Object obj = declaredField.get(newInstance);
            if (obj instanceof DisplayCutout) {
                return (DisplayCutout) obj;
            }
        } catch (ClassNotFoundException | IllegalAccessException | InstantiationException | NoSuchFieldException | NoSuchMethodException | InvocationTargetException unused) {
        }
        return null;
    }

    public final int j(Context context) {
        Resources resources = context.getResources();
        int identifier = resources.getIdentifier("navigation_bar_height", "dimen", "android");
        if (identifier > 0) {
            return resources.getDimensionPixelSize(identifier);
        }
        return 0;
    }

    public final Point k(Display display) {
        z50.e(display, "display");
        Point point = new Point();
        gm.a.a(display, point);
        return point;
    }

    public final void l(Activity activity, Rect rect) {
        activity.getWindowManager().getDefaultDisplay().getRectSize(rect);
    }
}
