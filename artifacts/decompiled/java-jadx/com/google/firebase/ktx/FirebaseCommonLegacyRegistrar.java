package com.google.firebase.ktx;

import androidx.annotation.Keep;
import androidx.appcompat.view.menu.rc;
import androidx.appcompat.view.menu.ud;
import androidx.appcompat.view.menu.v80;
import com.google.firebase.components.ComponentRegistrar;
import java.util.List;

@Keep
/* loaded from: classes.dex */
public final class FirebaseCommonLegacyRegistrar implements ComponentRegistrar {
    @Override // com.google.firebase.components.ComponentRegistrar
    public List<ud> getComponents() {
        return rc.b(v80.b("fire-core-ktx", "20.4.2"));
    }
}
