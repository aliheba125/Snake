package androidx.appcompat.view.menu;

import android.view.KeyEvent;
import androidx.appcompat.view.menu.a80;
import androidx.appcompat.view.menu.b80;
import androidx.appcompat.view.menu.i8;
import androidx.appcompat.view.menu.s70;
import java.nio.ByteBuffer;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;

/* loaded from: classes.dex */
public class w70 implements a80.d {
    public final i8 a;
    public final HashMap b = new HashMap();
    public final HashMap c = new HashMap();
    public final a80.b d = new a80.b();

    public static /* synthetic */ class a {
        public static final /* synthetic */ int[] a;

        static {
            int[] iArr = new int[s70.b.values().length];
            a = iArr;
            try {
                iArr[s70.b.kDown.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                a[s70.b.kUp.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                a[s70.b.kRepeat.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
        }
    }

    public w70(i8 i8Var) {
        this.a = i8Var;
        for (b80.e eVar : b80.a()) {
            this.c.put(Long.valueOf(eVar.c), eVar);
        }
    }

    public static s70.b e(KeyEvent keyEvent) {
        boolean z = keyEvent.getRepeatCount() > 0;
        int action = keyEvent.getAction();
        if (action == 0) {
            return z ? s70.b.kRepeat : s70.b.kDown;
        }
        if (action == 1) {
            return s70.b.kUp;
        }
        throw new AssertionError("Unexpected event type");
    }

    public static long j(long j, long j2) {
        return (j & 4294967295L) | j2;
    }

    public static /* synthetic */ void k(a80.d.a aVar, ByteBuffer byteBuffer) {
        Boolean bool = Boolean.FALSE;
        if (byteBuffer != null) {
            byteBuffer.rewind();
            if (byteBuffer.capacity() != 0) {
                bool = Boolean.valueOf(byteBuffer.get() != 0);
            }
        } else {
            ea0.g("KeyEmbedderResponder", "A null reply was received when sending a key event to the framework.");
        }
        aVar.a(bool.booleanValue());
    }

    @Override // androidx.appcompat.view.menu.a80.d
    public void a(KeyEvent keyEvent, a80.d.a aVar) {
        if (i(keyEvent, aVar)) {
            return;
        }
        q(true, 0L, 0L, 0L);
        aVar.a(true);
    }

    public final Long f(KeyEvent keyEvent) {
        Long l = (Long) b80.b.get(Long.valueOf(keyEvent.getKeyCode()));
        return l != null ? l : Long.valueOf(j(keyEvent.getKeyCode(), 73014444032L));
    }

    public final Long g(KeyEvent keyEvent) {
        long scanCode = keyEvent.getScanCode();
        if (scanCode == 0) {
            return Long.valueOf(j(keyEvent.getKeyCode(), 73014444032L));
        }
        Long l = (Long) b80.a.get(Long.valueOf(scanCode));
        return l != null ? l : Long.valueOf(j(keyEvent.getScanCode(), 73014444032L));
    }

    public Map h() {
        return Collections.unmodifiableMap(this.b);
    }

    /* JADX WARN: Removed duplicated region for block: B:43:0x00d5  */
    /* JADX WARN: Removed duplicated region for block: B:53:0x00fb  */
    /* JADX WARN: Removed duplicated region for block: B:63:0x014c A[LOOP:2: B:61:0x0146->B:63:0x014c, LOOP_END] */
    /* JADX WARN: Removed duplicated region for block: B:69:0x011d  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final boolean i(KeyEvent keyEvent, a80.d.a aVar) {
        boolean z;
        s70.b bVar;
        String str;
        int source;
        Iterator it;
        b80.e eVar;
        if (keyEvent.getScanCode() == 0 && keyEvent.getKeyCode() == 0) {
            return false;
        }
        Long g = g(keyEvent);
        Long f = f(keyEvent);
        ArrayList arrayList = new ArrayList();
        for (b80.d dVar : b80.c) {
            o(dVar, (keyEvent.getMetaState() & dVar.a) != 0, f.longValue(), g.longValue(), keyEvent, arrayList);
        }
        for (b80.e eVar2 : this.c.values()) {
            p(eVar2, (keyEvent.getMetaState() & eVar2.a) != 0, f.longValue(), keyEvent);
        }
        int action = keyEvent.getAction();
        if (action == 0) {
            z = true;
        } else {
            if (action != 1) {
                return false;
            }
            z = false;
        }
        Long l = (Long) this.b.get(g);
        if (z) {
            if (l == null) {
                bVar = s70.b.kDown;
            } else if (keyEvent.getRepeatCount() > 0) {
                bVar = s70.b.kRepeat;
            } else {
                q(false, l, g, keyEvent.getEventTime());
                bVar = s70.b.kDown;
            }
            char charValue = this.d.a(keyEvent.getUnicodeChar()).charValue();
            if (charValue != 0) {
                str = "" + charValue;
                if (bVar != s70.b.kRepeat) {
                    r(g, z ? f : null);
                }
                if (bVar == s70.b.kDown && (eVar = (b80.e) this.c.get(f)) != null) {
                    eVar.d = !eVar.d;
                }
                s70 s70Var = new s70();
                source = keyEvent.getSource();
                if (source != 513) {
                    s70Var.f = s70.a.kDirectionalPad;
                } else if (source == 1025) {
                    s70Var.f = s70.a.kGamepad;
                } else if (source == 16777232) {
                    s70Var.f = s70.a.kJoystick;
                } else if (source != 33554433) {
                    s70Var.f = s70.a.kKeyboard;
                } else {
                    s70Var.f = s70.a.kHdmi;
                }
                s70Var.a = keyEvent.getEventTime();
                s70Var.b = bVar;
                s70Var.d = f.longValue();
                s70Var.c = g.longValue();
                s70Var.g = str;
                s70Var.e = false;
                s70Var.f = s70.a.kKeyboard;
                n(s70Var, aVar);
                it = arrayList.iterator();
                while (it.hasNext()) {
                    ((Runnable) it.next()).run();
                }
                return true;
            }
        } else {
            if (l == null) {
                return false;
            }
            bVar = s70.b.kUp;
        }
        str = null;
        if (bVar != s70.b.kRepeat) {
        }
        if (bVar == s70.b.kDown) {
            eVar.d = !eVar.d;
        }
        s70 s70Var2 = new s70();
        source = keyEvent.getSource();
        if (source != 513) {
        }
        s70Var2.a = keyEvent.getEventTime();
        s70Var2.b = bVar;
        s70Var2.d = f.longValue();
        s70Var2.c = g.longValue();
        s70Var2.g = str;
        s70Var2.e = false;
        s70Var2.f = s70.a.kKeyboard;
        n(s70Var2, aVar);
        it = arrayList.iterator();
        while (it.hasNext()) {
        }
        return true;
    }

    public final /* synthetic */ void l(b80.c cVar, long j, KeyEvent keyEvent) {
        q(false, Long.valueOf(cVar.b), Long.valueOf(j), keyEvent.getEventTime());
    }

    public final /* synthetic */ void m(b80.c cVar, KeyEvent keyEvent) {
        q(false, Long.valueOf(cVar.b), Long.valueOf(cVar.a), keyEvent.getEventTime());
    }

    public final void n(s70 s70Var, final a80.d.a aVar) {
        this.a.b("flutter/keydata", s70Var.a(), aVar == null ? null : new i8.b() { // from class: androidx.appcompat.view.menu.t70
            @Override // androidx.appcompat.view.menu.i8.b
            public final void a(ByteBuffer byteBuffer) {
                w70.k(a80.d.a.this, byteBuffer);
            }
        });
    }

    public void o(b80.d dVar, boolean z, long j, final long j2, final KeyEvent keyEvent, ArrayList arrayList) {
        b80.c[] cVarArr = dVar.b;
        boolean[] zArr = new boolean[cVarArr.length];
        Boolean[] boolArr = new Boolean[cVarArr.length];
        boolean z2 = false;
        int i = 0;
        while (true) {
            b80.c[] cVarArr2 = dVar.b;
            boolean z3 = true;
            if (i >= cVarArr2.length) {
                break;
            }
            final b80.c cVar = cVarArr2[i];
            boolean containsKey = this.b.containsKey(Long.valueOf(cVar.a));
            zArr[i] = containsKey;
            if (cVar.b == j) {
                int i2 = a.a[e(keyEvent).ordinal()];
                if (i2 != 1) {
                    if (i2 == 2) {
                        boolArr[i] = Boolean.valueOf(zArr[i]);
                    } else if (i2 == 3) {
                        if (!z) {
                            arrayList.add(new Runnable() { // from class: androidx.appcompat.view.menu.v70
                                @Override // java.lang.Runnable
                                public final void run() {
                                    w70.this.m(cVar, keyEvent);
                                }
                            });
                        }
                        boolArr[i] = Boolean.valueOf(zArr[i]);
                    }
                    i++;
                } else {
                    boolArr[i] = Boolean.FALSE;
                    if (!z) {
                        arrayList.add(new Runnable() { // from class: androidx.appcompat.view.menu.u70
                            @Override // java.lang.Runnable
                            public final void run() {
                                w70.this.l(cVar, j2, keyEvent);
                            }
                        });
                    }
                }
            } else if (!z2 && !containsKey) {
                z3 = false;
            }
            z2 = z3;
            i++;
        }
        if (z) {
            for (int i3 = 0; i3 < dVar.b.length; i3++) {
                if (boolArr[i3] == null) {
                    if (z2) {
                        boolArr[i3] = Boolean.valueOf(zArr[i3]);
                    } else {
                        boolArr[i3] = Boolean.TRUE;
                        z2 = true;
                    }
                }
            }
            if (!z2) {
                boolArr[0] = Boolean.TRUE;
            }
        } else {
            for (int i4 = 0; i4 < dVar.b.length; i4++) {
                if (boolArr[i4] == null) {
                    boolArr[i4] = Boolean.FALSE;
                }
            }
        }
        for (int i5 = 0; i5 < dVar.b.length; i5++) {
            if (zArr[i5] != boolArr[i5].booleanValue()) {
                b80.c cVar2 = dVar.b[i5];
                q(boolArr[i5].booleanValue(), Long.valueOf(cVar2.b), Long.valueOf(cVar2.a), keyEvent.getEventTime());
            }
        }
    }

    public void p(b80.e eVar, boolean z, long j, KeyEvent keyEvent) {
        if (eVar.c == j || eVar.d == z) {
            return;
        }
        boolean containsKey = this.b.containsKey(Long.valueOf(eVar.b));
        boolean z2 = !containsKey;
        if (z2) {
            eVar.d = !eVar.d;
        }
        q(z2, Long.valueOf(eVar.c), Long.valueOf(eVar.b), keyEvent.getEventTime());
        if (!z2) {
            eVar.d = !eVar.d;
        }
        q(containsKey, Long.valueOf(eVar.c), Long.valueOf(eVar.b), keyEvent.getEventTime());
    }

    public final void q(boolean z, Long l, Long l2, long j) {
        s70 s70Var = new s70();
        s70Var.a = j;
        s70Var.b = z ? s70.b.kDown : s70.b.kUp;
        s70Var.d = l.longValue();
        s70Var.c = l2.longValue();
        s70Var.g = null;
        s70Var.e = true;
        s70Var.f = s70.a.kKeyboard;
        if (l2.longValue() != 0 && l.longValue() != 0) {
            if (!z) {
                l = null;
            }
            r(l2, l);
        }
        n(s70Var, null);
    }

    public void r(Long l, Long l2) {
        if (l2 != null) {
            if (((Long) this.b.put(l, l2)) != null) {
                throw new AssertionError("The key was not empty");
            }
        } else if (((Long) this.b.remove(l)) == null) {
            throw new AssertionError("The key was empty");
        }
    }
}
