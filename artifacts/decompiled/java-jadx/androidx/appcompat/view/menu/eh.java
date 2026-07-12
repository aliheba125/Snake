package androidx.appcompat.view.menu;

import java.io.File;
import java.io.IOException;

/* loaded from: classes.dex */
public class eh implements tp {
    @Override // androidx.appcompat.view.menu.tp
    public int a(y6 y6Var, j50 j50Var, int i) {
        try {
            if (!j50Var.b(1)) {
                oe0.a(new File(y6Var.m.G), lv0.c(y6Var.m.y));
            }
            if (!j50Var.b(2)) {
                return 0;
            }
            File file = new File(y6Var.m.G);
            File e = lv0.e(y6Var.m.y);
            try {
                if (!j50Var.b(8)) {
                    lr.b(file, e);
                } else if (!lr.i(file, e)) {
                    lr.b(file, e);
                }
                y6Var.m.G = e.getAbsolutePath();
                return 0;
            } catch (IOException e2) {
                e2.printStackTrace();
                return -1;
            }
        } catch (Exception e3) {
            e3.printStackTrace();
            return -1;
        }
    }
}
