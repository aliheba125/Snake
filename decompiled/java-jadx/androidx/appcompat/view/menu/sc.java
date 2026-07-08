package androidx.appcompat.view.menu;

import java.util.ArrayList;
import java.util.Collection;
import java.util.List;

/* loaded from: classes.dex */
public abstract class sc extends rc {
    public static ArrayList c(Object... objArr) {
        z50.e(objArr, "elements");
        return objArr.length == 0 ? new ArrayList() : new ArrayList(new j4(objArr, true));
    }

    public static final Collection d(Object[] objArr) {
        z50.e(objArr, "<this>");
        return new j4(objArr, false);
    }

    public static List e() {
        return fo.m;
    }

    public static final int f(List list) {
        z50.e(list, "<this>");
        return list.size() - 1;
    }

    public static List g(Object... objArr) {
        z50.e(objArr, "elements");
        return objArr.length > 0 ? w4.b(objArr) : e();
    }

    public static List h(List list) {
        z50.e(list, "<this>");
        int size = list.size();
        return size != 0 ? size != 1 ? list : rc.b(list.get(0)) : e();
    }

    public static void i() {
        throw new ArithmeticException("Index overflow has happened.");
    }
}
