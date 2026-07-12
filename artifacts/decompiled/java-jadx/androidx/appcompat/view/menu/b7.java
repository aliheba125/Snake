package androidx.appcompat.view.menu;

import android.net.Uri;
import android.os.Process;
import android.os.storage.StorageVolume;
import androidx.appcompat.view.menu.go0;
import androidx.appcompat.view.menu.n00;
import com.snake.helper.FileProvider;
import java.io.File;

/* loaded from: classes.dex */
public class b7 extends n00.a implements i30 {
    public static final b7 l = new b7();

    public static b7 h() {
        return l;
    }

    @Override // androidx.appcompat.view.menu.n00
    public StorageVolume[] D0(int i, String str, int i2, int i3) {
        go0.e eVar = dx0.b;
        if (eVar == null) {
            return null;
        }
        try {
            StorageVolume[] storageVolumeArr = (StorageVolume[]) eVar.b(Integer.valueOf(d7.c(Process.myUid())), 0);
            if (storageVolumeArr == null) {
                return null;
            }
            for (StorageVolume storageVolume : storageVolumeArr) {
                fx0.c.e(storageVolume, lv0.n(i3));
                if (y8.e()) {
                    fx0.b.e(storageVolume, lv0.n(i3));
                }
            }
            return storageVolumeArr;
        } catch (Exception e) {
            e.printStackTrace();
            return null;
        }
    }

    @Override // androidx.appcompat.view.menu.i30
    public void j() {
    }

    @Override // androidx.appcompat.view.menu.n00
    public Uri x0(String str) {
        return FileProvider.f(yu0.m(), kl0.f(), new File(str));
    }
}
