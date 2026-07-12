package androidx.appcompat.view.menu;

import android.content.pm.PackageParser;
import androidx.appcompat.view.menu.q02;

/* loaded from: classes.dex */
public abstract class x62 {
    public static String a(qx1 qx1Var) {
        v62 v62Var = new v62(qx1Var);
        StringBuilder sb = new StringBuilder(v62Var.a());
        for (int i = 0; i < v62Var.a(); i++) {
            byte e = v62Var.e(i);
            if (e == 34) {
                sb.append("\\\"");
            } else if (e == 39) {
                sb.append("\\'");
            } else if (e != 92) {
                switch (e) {
                    case q02.c.g /* 7 */:
                        sb.append("\\a");
                        break;
                    case PackageParser.PARSE_IGNORE_PROCESSES /* 8 */:
                        sb.append("\\b");
                        break;
                    case 9:
                        sb.append("\\t");
                        break;
                    case 10:
                        sb.append("\\n");
                        break;
                    case 11:
                        sb.append("\\v");
                        break;
                    case 12:
                        sb.append("\\f");
                        break;
                    case 13:
                        sb.append("\\r");
                        break;
                    default:
                        if (e < 32 || e > 126) {
                            sb.append('\\');
                            sb.append((char) (((e >>> 6) & 3) + 48));
                            sb.append((char) (((e >>> 3) & 7) + 48));
                            sb.append((char) ((e & 7) + 48));
                            break;
                        } else {
                            sb.append((char) e);
                            break;
                        }
                }
            } else {
                sb.append("\\\\");
            }
        }
        return sb.toString();
    }
}
