package androidx.appcompat.view.menu;

import android.content.pm.PackageParser;
import androidx.appcompat.view.menu.mv;
import androidx.appcompat.view.menu.q02;
import androidx.appcompat.view.menu.xv;
import java.io.PrintWriter;
import java.util.ArrayList;

/* loaded from: classes.dex */
public final class n7 extends xv implements mv.h {
    public final mv t;
    public boolean u;
    public int v;
    public boolean w;

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public n7(mv mvVar) {
        super(r0, null);
        ev i0 = mvVar.i0();
        mvVar.j0();
        this.v = -1;
        this.w = false;
        this.t = mvVar;
    }

    @Override // androidx.appcompat.view.menu.mv.h
    public boolean a(ArrayList arrayList, ArrayList arrayList2) {
        if (mv.v0(2)) {
            StringBuilder sb = new StringBuilder();
            sb.append("Run: ");
            sb.append(this);
        }
        arrayList.add(this);
        arrayList2.add(Boolean.FALSE);
        if (!this.i) {
            return true;
        }
        this.t.f(this);
        return true;
    }

    @Override // androidx.appcompat.view.menu.xv
    public int e() {
        return p(false);
    }

    @Override // androidx.appcompat.view.menu.xv
    public int f() {
        return p(true);
    }

    @Override // androidx.appcompat.view.menu.xv
    public void g() {
        i();
        this.t.R(this, false);
    }

    @Override // androidx.appcompat.view.menu.xv
    public void h() {
        i();
        this.t.R(this, true);
    }

    @Override // androidx.appcompat.view.menu.xv
    public void j(int i, av avVar, String str, int i2) {
        super.j(i, avVar, str, i2);
        avVar.t = this.t;
    }

    @Override // androidx.appcompat.view.menu.xv
    public xv k(av avVar) {
        mv mvVar = avVar.t;
        if (mvVar == null || mvVar == this.t) {
            return super.k(avVar);
        }
        throw new IllegalStateException("Cannot remove Fragment attached to a different FragmentManager. Fragment " + avVar.toString() + " is already attached to a FragmentManager.");
    }

    public void o(int i) {
        if (this.i) {
            if (mv.v0(2)) {
                StringBuilder sb = new StringBuilder();
                sb.append("Bump nesting in ");
                sb.append(this);
                sb.append(" by ");
                sb.append(i);
            }
            int size = this.c.size();
            for (int i2 = 0; i2 < size; i2++) {
                xv.a aVar = (xv.a) this.c.get(i2);
                av avVar = aVar.b;
                if (avVar != null) {
                    avVar.s += i;
                    if (mv.v0(2)) {
                        StringBuilder sb2 = new StringBuilder();
                        sb2.append("Bump nesting of ");
                        sb2.append(aVar.b);
                        sb2.append(" to ");
                        sb2.append(aVar.b.s);
                    }
                }
            }
        }
    }

    public int p(boolean z) {
        if (this.u) {
            throw new IllegalStateException("commit already called");
        }
        if (mv.v0(2)) {
            StringBuilder sb = new StringBuilder();
            sb.append("Commit: ");
            sb.append(this);
            PrintWriter printWriter = new PrintWriter(new ka0("FragmentManager"));
            q("  ", printWriter);
            printWriter.close();
        }
        this.u = true;
        if (this.i) {
            this.v = this.t.i();
        } else {
            this.v = -1;
        }
        this.t.O(this, z);
        return this.v;
    }

    public void q(String str, PrintWriter printWriter) {
        r(str, printWriter, true);
    }

    public void r(String str, PrintWriter printWriter, boolean z) {
        String str2;
        if (z) {
            printWriter.print(str);
            printWriter.print("mName=");
            printWriter.print(this.k);
            printWriter.print(" mIndex=");
            printWriter.print(this.v);
            printWriter.print(" mCommitted=");
            printWriter.println(this.u);
            if (this.h != 0) {
                printWriter.print(str);
                printWriter.print("mTransition=#");
                printWriter.print(Integer.toHexString(this.h));
            }
            if (this.d != 0 || this.e != 0) {
                printWriter.print(str);
                printWriter.print("mEnterAnim=#");
                printWriter.print(Integer.toHexString(this.d));
                printWriter.print(" mExitAnim=#");
                printWriter.println(Integer.toHexString(this.e));
            }
            if (this.f != 0 || this.g != 0) {
                printWriter.print(str);
                printWriter.print("mPopEnterAnim=#");
                printWriter.print(Integer.toHexString(this.f));
                printWriter.print(" mPopExitAnim=#");
                printWriter.println(Integer.toHexString(this.g));
            }
            if (this.l != 0 || this.m != null) {
                printWriter.print(str);
                printWriter.print("mBreadCrumbTitleRes=#");
                printWriter.print(Integer.toHexString(this.l));
                printWriter.print(" mBreadCrumbTitleText=");
                printWriter.println(this.m);
            }
            if (this.n != 0 || this.o != null) {
                printWriter.print(str);
                printWriter.print("mBreadCrumbShortTitleRes=#");
                printWriter.print(Integer.toHexString(this.n));
                printWriter.print(" mBreadCrumbShortTitleText=");
                printWriter.println(this.o);
            }
        }
        if (this.c.isEmpty()) {
            return;
        }
        printWriter.print(str);
        printWriter.println("Operations:");
        int size = this.c.size();
        for (int i = 0; i < size; i++) {
            xv.a aVar = (xv.a) this.c.get(i);
            switch (aVar.a) {
                case 0:
                    str2 = "NULL";
                    break;
                case 1:
                    str2 = "ADD";
                    break;
                case 2:
                    str2 = "REPLACE";
                    break;
                case q02.c.c /* 3 */:
                    str2 = "REMOVE";
                    break;
                case 4:
                    str2 = "HIDE";
                    break;
                case q02.c.e /* 5 */:
                    str2 = "SHOW";
                    break;
                case q02.c.f /* 6 */:
                    str2 = "DETACH";
                    break;
                case q02.c.g /* 7 */:
                    str2 = "ATTACH";
                    break;
                case PackageParser.PARSE_IGNORE_PROCESSES /* 8 */:
                    str2 = "SET_PRIMARY_NAV";
                    break;
                case 9:
                    str2 = "UNSET_PRIMARY_NAV";
                    break;
                case 10:
                    str2 = "OP_SET_MAX_LIFECYCLE";
                    break;
                default:
                    str2 = "cmd=" + aVar.a;
                    break;
            }
            printWriter.print(str);
            printWriter.print("  Op #");
            printWriter.print(i);
            printWriter.print(": ");
            printWriter.print(str2);
            printWriter.print(" ");
            printWriter.println(aVar.b);
            if (z) {
                if (aVar.d != 0 || aVar.e != 0) {
                    printWriter.print(str);
                    printWriter.print("enterAnim=#");
                    printWriter.print(Integer.toHexString(aVar.d));
                    printWriter.print(" exitAnim=#");
                    printWriter.println(Integer.toHexString(aVar.e));
                }
                if (aVar.f != 0 || aVar.g != 0) {
                    printWriter.print(str);
                    printWriter.print("popEnterAnim=#");
                    printWriter.print(Integer.toHexString(aVar.f));
                    printWriter.print(" popExitAnim=#");
                    printWriter.println(Integer.toHexString(aVar.g));
                }
            }
        }
    }

    public void s() {
        int size = this.c.size();
        for (int i = 0; i < size; i++) {
            xv.a aVar = (xv.a) this.c.get(i);
            av avVar = aVar.b;
            if (avVar != null) {
                avVar.n = this.w;
                avVar.a1(false);
                avVar.Z0(this.h);
                avVar.c1(this.p, this.q);
            }
            switch (aVar.a) {
                case 1:
                    avVar.W0(aVar.d, aVar.e, aVar.f, aVar.g);
                    this.t.Y0(avVar, false);
                    this.t.g(avVar);
                    break;
                case 2:
                default:
                    throw new IllegalArgumentException("Unknown cmd: " + aVar.a);
                case q02.c.c /* 3 */:
                    avVar.W0(aVar.d, aVar.e, aVar.f, aVar.g);
                    this.t.S0(avVar);
                    break;
                case 4:
                    avVar.W0(aVar.d, aVar.e, aVar.f, aVar.g);
                    this.t.s0(avVar);
                    break;
                case q02.c.e /* 5 */:
                    avVar.W0(aVar.d, aVar.e, aVar.f, aVar.g);
                    this.t.Y0(avVar, false);
                    this.t.c1(avVar);
                    break;
                case q02.c.f /* 6 */:
                    avVar.W0(aVar.d, aVar.e, aVar.f, aVar.g);
                    this.t.t(avVar);
                    break;
                case q02.c.g /* 7 */:
                    avVar.W0(aVar.d, aVar.e, aVar.f, aVar.g);
                    this.t.Y0(avVar, false);
                    this.t.k(avVar);
                    break;
                case PackageParser.PARSE_IGNORE_PROCESSES /* 8 */:
                    this.t.a1(avVar);
                    break;
                case 9:
                    this.t.a1(null);
                    break;
                case 10:
                    this.t.Z0(avVar, aVar.i);
                    break;
            }
        }
    }

    public void t() {
        for (int size = this.c.size() - 1; size >= 0; size--) {
            xv.a aVar = (xv.a) this.c.get(size);
            av avVar = aVar.b;
            if (avVar != null) {
                avVar.n = this.w;
                avVar.a1(true);
                avVar.Z0(mv.W0(this.h));
                avVar.c1(this.q, this.p);
            }
            switch (aVar.a) {
                case 1:
                    avVar.W0(aVar.d, aVar.e, aVar.f, aVar.g);
                    this.t.Y0(avVar, true);
                    this.t.S0(avVar);
                    break;
                case 2:
                default:
                    throw new IllegalArgumentException("Unknown cmd: " + aVar.a);
                case q02.c.c /* 3 */:
                    avVar.W0(aVar.d, aVar.e, aVar.f, aVar.g);
                    this.t.g(avVar);
                    break;
                case 4:
                    avVar.W0(aVar.d, aVar.e, aVar.f, aVar.g);
                    this.t.c1(avVar);
                    break;
                case q02.c.e /* 5 */:
                    avVar.W0(aVar.d, aVar.e, aVar.f, aVar.g);
                    this.t.Y0(avVar, true);
                    this.t.s0(avVar);
                    break;
                case q02.c.f /* 6 */:
                    avVar.W0(aVar.d, aVar.e, aVar.f, aVar.g);
                    this.t.k(avVar);
                    break;
                case q02.c.g /* 7 */:
                    avVar.W0(aVar.d, aVar.e, aVar.f, aVar.g);
                    this.t.Y0(avVar, true);
                    this.t.t(avVar);
                    break;
                case PackageParser.PARSE_IGNORE_PROCESSES /* 8 */:
                    this.t.a1(null);
                    break;
                case 9:
                    this.t.a1(avVar);
                    break;
                case 10:
                    this.t.Z0(avVar, aVar.h);
                    break;
            }
        }
    }

    public String toString() {
        StringBuilder sb = new StringBuilder(PackageParser.PARSE_IS_PRIVILEGED);
        sb.append("BackStackEntry{");
        sb.append(Integer.toHexString(System.identityHashCode(this)));
        if (this.v >= 0) {
            sb.append(" #");
            sb.append(this.v);
        }
        if (this.k != null) {
            sb.append(" ");
            sb.append(this.k);
        }
        sb.append("}");
        return sb.toString();
    }

    public av u(ArrayList arrayList, av avVar) {
        av avVar2 = avVar;
        int i = 0;
        while (i < this.c.size()) {
            xv.a aVar = (xv.a) this.c.get(i);
            int i2 = aVar.a;
            if (i2 != 1) {
                if (i2 == 2) {
                    av avVar3 = aVar.b;
                    int i3 = avVar3.x;
                    boolean z = false;
                    for (int size = arrayList.size() - 1; size >= 0; size--) {
                        av avVar4 = (av) arrayList.get(size);
                        if (avVar4.x == i3) {
                            if (avVar4 == avVar3) {
                                z = true;
                            } else {
                                if (avVar4 == avVar2) {
                                    this.c.add(i, new xv.a(9, avVar4, true));
                                    i++;
                                    avVar2 = null;
                                }
                                xv.a aVar2 = new xv.a(3, avVar4, true);
                                aVar2.d = aVar.d;
                                aVar2.f = aVar.f;
                                aVar2.e = aVar.e;
                                aVar2.g = aVar.g;
                                this.c.add(i, aVar2);
                                arrayList.remove(avVar4);
                                i++;
                            }
                        }
                    }
                    if (z) {
                        this.c.remove(i);
                        i--;
                    } else {
                        aVar.a = 1;
                        aVar.c = true;
                        arrayList.add(avVar3);
                    }
                } else if (i2 == 3 || i2 == 6) {
                    arrayList.remove(aVar.b);
                    av avVar5 = aVar.b;
                    if (avVar5 == avVar2) {
                        this.c.add(i, new xv.a(9, avVar5));
                        i++;
                        avVar2 = null;
                    }
                } else if (i2 != 7) {
                    if (i2 == 8) {
                        this.c.add(i, new xv.a(9, avVar2, true));
                        aVar.c = true;
                        i++;
                        avVar2 = aVar.b;
                    }
                }
                i++;
            }
            arrayList.add(aVar.b);
            i++;
        }
        return avVar2;
    }

    public String v() {
        return this.k;
    }

    public void w() {
        if (this.s != null) {
            for (int i = 0; i < this.s.size(); i++) {
                ((Runnable) this.s.get(i)).run();
            }
            this.s = null;
        }
    }

    public av x(ArrayList arrayList, av avVar) {
        for (int size = this.c.size() - 1; size >= 0; size--) {
            xv.a aVar = (xv.a) this.c.get(size);
            int i = aVar.a;
            if (i != 1) {
                if (i != 3) {
                    switch (i) {
                        case PackageParser.PARSE_IGNORE_PROCESSES /* 8 */:
                            avVar = null;
                            break;
                        case 9:
                            avVar = aVar.b;
                            break;
                        case 10:
                            aVar.i = aVar.h;
                            break;
                    }
                }
                arrayList.add(aVar.b);
            }
            arrayList.remove(aVar.b);
        }
        return avVar;
    }
}
